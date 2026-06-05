#include <nds.h>
#include <nds/arm9/sound.h>

#include "sample.h"
#include "command.h"

static int g_channel0 = -1;

void CommandInit()
{
    soundEnable();
}

void CommandPlaySample(Sample *sample, u8, u8 volume, u8 channel)
{
    if (!sample)
        return;

    const SoundFormat format = sample->is16bit() ? SoundFormat_16Bit : SoundFormat_8Bit;
    const u32 bytes_per_sample = sample->is16bit() ? 2 : 1;
    const u32 data_size = sample->getNSamples() * bytes_per_sample;
    const u8 play_volume = (volume == NO_VOLUME) ? sample->getVolume() / 2 : volume / 2;
    const int sound_id = soundPlaySampleChannel(channel, sample->getData(), format, data_size,
                                                16381, play_volume, 64, false, 0);
    if (channel == 0)
        g_channel0 = sound_id;
}

void CommandPlaySample(Sample *sample)
{
    CommandPlaySample(sample, 48, NO_VOLUME, 0);
}

void CommandStopSample(int channel)
{
    if (channel == 0 && g_channel0 >= 0) {
        soundKill(g_channel0);
        g_channel0 = -1;
    }
}

void CommandProcessCommands()
{
}

void CommandPlayOneShotSample(int, int, const void *, int, int, int, bool)
{
}

void CommandStartRecording(u16 *, int)
{
}

int CommandStopRecording()
{
    return 0;
}

void CommandSetSong(void *)
{
}

void CommandStartPlay(u8, u16)
{
}

void CommandStopPlay()
{
}

void CommandSetDebugStrPtr(char **, u16, u8)
{
}

void CommandPlayInst(u8, u8, u8, u8)
{
}

void CommandStopInst(u8)
{
}

void CommandMicOn()
{
}

void CommandMicOff()
{
}

void CommandSetPatternLoop(bool)
{
}
