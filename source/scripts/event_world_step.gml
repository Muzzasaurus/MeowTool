//game closing animation
if (gameclosing) {
    closingvol=max(0,closingvol*0.9)
    sound_global_volume(closingvol*global.gain)
    if (closingvol<=0.025) game_end()

    closingk=!closingk
    if (closingk) {
        window_set_region_scale(1,1)
        window_set_region_size(global.width,ceil(global.height*sqr(closingvol)),1)
        window_center()
    }

    draw_clear(merge_color(0,$ffffff,1-closingvol))
    window_set_color(merge_color(0,$ffffff,1-closingvol))
    screen_refresh()

    exit
}

global.infocus=window_has_focus()

if (message) message-=1
if (message2) message2-=1

//music fade
if (music_fade<1) {
    music_fade+=1/music_fade_time
    sound_kind_volume(1,settings("musvol")*lerp(music_fade_from,music_fade_to,music_fade))
    if (music_fade==1 && music_pause) {
        sound_kind_pause(1)
        sound_kind_volume(1,0)
    }
}

//music slow
if (slowing) {
    slowfrom-=0.01
    if (!instance_exists(MusicSync)) sound_kind_pitch(1,slowfrom)
    else MusicSync.slowing=1
    if (slowfrom<=0) {
        slowing=0
        //pause when it's done slowing
        sound_kind_pause(1)
        sound_kind_volume(1,0)
    }
}

if (is_ingame() && room!=global.difficulty_room) {
    //advance game time
    if (!Player.dead && !global.pause && !instance_exists(TimerFreeze)) {
        time=savedatap("time")+50/room_speed
        savedatap("time",time)
    }

    update_caption_deathtime()
}

//debug keys
if (global.test_run) {
    debug_keys()
}
if (keyboard_check_pressed(vk_f3)) {
    if (instance_exists(global.profiler_manager)) {
        instance_destroy_id(global.profiler_manager)
    } else {
        instance_create(0,0,global.profiler_manager)
    }
}

system_hotkeys()

if (fps_real) cpu_usage=ceil(min(1,room_speed/fps_real)*100)

if (global.debug_overlay) {
    if (!instance_exists(global.profiler_manager)) {
        ram_timer+=1
        if (ram_timer>room_speed) {
            ram_timer=0
            ram_usage=get_ram_usage()
        }
    }
}
