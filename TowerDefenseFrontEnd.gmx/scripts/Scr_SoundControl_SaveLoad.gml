var type, group;

type = ds_map_find_value(async_load, "type");
group = ds_map_find_value(async_load, "group_id");

if type = "audiogroup_load" and group = ag_music
{
    audio_play_sound(Sound_BGM, 1, true)
}
