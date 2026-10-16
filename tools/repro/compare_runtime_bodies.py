#!/usr/bin/env python3
"""Compare recorded body bits at matching physics steps and object indices."""

import argparse
import csv
import hashlib
import json
from pathlib import Path

FIELDS = (
    "shape",
    "type",
    "body",
    "x_bits",
    "y_bits",
    "vx_bits",
    "vy_bits",
    "angle_bits",
    "angular_velocity_bits",
    "awake",
)


def load(path: Path, label: str, iteration: int = 1):
    states = {}
    with path.open() as stream:
        for row in csv.DictReader(stream):
            if row["label"] != label or int(row["iteration"]) != iteration:
                continue
            key = (int(row["step"]), int(row["thing"]))
            if key in states:
                raise ValueError("Duplicate body state key")
            state = {field: row[field] for field in FIELDS}
            for field in FIELDS:
                if field.endswith("_bits"):
                    if len(state[field]) != 8:
                        raise ValueError("Scalar is not four bytes")
                    int(state[field], 16)
            states[key] = state
    if not states:
        raise ValueError("No states for the requested label and repetition")
    return states


def compare(
    reference: Path, candidate: Path, reference_label: str, candidate_label: str
):
    a, b = load(reference, reference_label), load(candidate, candidate_label)
    shared = sorted(a.keys() & b.keys())
    differences = []
    for step, thing in shared:
        fields = {
            field: [a[step, thing][field], b[step, thing][field]]
            for field in FIELDS
            if a[step, thing][field] != b[step, thing][field]
        }
        if fields:
            differences.append(dict(step=step, thing=thing, fields=fields))
    return dict(
        reference_label=reference_label,
        candidate_label=candidate_label,
        reference_csv_sha256=hashlib.sha256(reference.read_bytes()).hexdigest(),
        candidate_csv_sha256=hashlib.sha256(candidate.read_bytes()).hexdigest(),
        alignment="physics step and thing index, first repetition; run validators establish within-specimen repetition",
        shared_records=len(shared),
        only_reference=len(a.keys() - b.keys()),
        only_candidate=len(b.keys() - a.keys()),
        differing_records=len(differences),
        first_differences=differences[:5],
        scope="Recorded raw transforms, velocities, shape/type/body flags, and awake state. Hidden manifolds and joint parameters are not captured; timing and event alignment are separate.",
    )


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("reference", type=Path)
    parser.add_argument("candidate", type=Path)
    parser.add_argument("--reference-label", required=True)
    parser.add_argument("--candidate-label", required=True)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    result = compare(
        args.reference, args.candidate, args.reference_label, args.candidate_label
    )
    args.output.write_text(json.dumps(result, indent=2) + "\n")
    first = result["first_differences"]
    print(
        f"{result['differing_records']}/{result['shared_records']} shared body states differ; first step {first[0]['step'] if first else 'none'}"
    )
