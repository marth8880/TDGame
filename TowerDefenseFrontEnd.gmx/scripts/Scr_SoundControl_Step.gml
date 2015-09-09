global.MasterVolume = (MasterSlider.x  - MasterSlider.minX) / (MasterSlider.maxX - MasterSlider.minX);
audio_master_gain(global.MasterVolume);

global.MusicVolume = (MusicSlider.x - MusicSlider.minX) / (MasterSlider.maxX - MasterSlider.minX);
audio_group_set_gain(ag_music, global.MusicVolume, 0);

global.EffectsVolume = (EffectsSlider.x - EffectsSlider.minX) / (EffectsSlider.maxX - EffectsSlider.minX);
audio_group_set_gain(ag_effects, global.EffectsVolume, 0);
