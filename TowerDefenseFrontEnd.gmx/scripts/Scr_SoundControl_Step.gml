if (room = rm_options)
{
    global.MasterVolume = (obj_snd_MasterSlider.x  - obj_snd_MasterSlider.minX) / (obj_snd_MasterSlider.maxX - obj_snd_MasterSlider.minX);
    audio_master_gain(global.MasterVolume);
    
    global.MusicVolume = (obj_snd_MusicSlider.x - obj_snd_MusicSlider.minX) / (obj_snd_MasterSlider.maxX - obj_snd_MasterSlider.minX);
    audio_group_set_gain(ag_music, global.MusicVolume, 0);
    
    global.EffectsVolume = (obj_snd_EffectsSlider.x - obj_snd_EffectsSlider.minX) / (obj_snd_EffectsSlider.maxX - obj_snd_EffectsSlider.minX);
    audio_group_set_gain(ag_effects, global.EffectsVolume, 0);
}
