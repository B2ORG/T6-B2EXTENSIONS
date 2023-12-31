#include common_scripts\utility;

init()
{
    level.B2_HUD = array();
    level.B2_HUD["timer_hud"] = get_timer_hud();
    level.B2_HUD["round_hud"] = get_round_hud();
    level.B2_HUD["hud_velocity"] = get_velocity_hud();
    level.B2_HUD["springpad_hud"] = get_springpad_hud();
    level.B2_HUD["subwoofer_hud"] = get_subwoofer_hud();
    level.B2_HUD["turbine_hud"] = get_turbine_hud();
    level.B2_HUD["netframe_hud"] = get_netframe_hud();
}

/*
    Top right corner timers: timer y=-35 round y=-18

    Please refer to either game scripts or another mods, or alternatively experiment with these values until you get the desired effect
*/

get_timer_hud()
{
    data = array();
    data["x_align"] = "TOPRIGHT";
    data["y_align"] = "TOPRIGHT";
    data["x_pos"] = 60;
    data["y_pos"] = -30;
    data["color"] = (1, 1, 1);

    return data;
}

get_round_hud()
{
    data = array();
    data["x_align"] = "TOPRIGHT";
    data["y_align"] = "TOPRIGHT";
    data["x_pos"] = 60;
    data["y_pos"] = -13;
    data["color"] = (1, 1, 1);

    return data;
}

get_springpad_hud()
{
    data = array();
    data["x_align"] = "TOPLEFT";
    data["y_align"] = "TOPLEFT";
    data["x_pos"] = -60;
    data["y_pos"] = -17;
    data["color"] = (1, 1, 1);

    return data;
}

get_subwoofer_hud()
{
    data = array();
    data["x_align"] = "TOPLEFT";
    data["y_align"] = "TOPLEFT";
    data["x_pos"] = -60;
    data["y_pos"] = 0;
    data["color"] = (1, 1, 1);

    return data;
}

get_turbine_hud()
{
    data = array();
    data["x_align"] = "TOPLEFT";
    data["y_align"] = "TOPLEFT";
    data["x_pos"] = -60;
    data["y_pos"] = 17;
    data["color"] = (1, 1, 1);

    return data;
}

get_velocity_hud()
{
    data = array();
    data["x_align"] = "CENTER";
    data["y_align"] = "CENTER";
    data["x_pos"] = "CENTER";
    data["y_pos"] = 200;
    data["color"] = (0.6, 0, 0);

    return data;
}

get_netframe_hud()
{
    data = array();
    data["x_align"] = "CENTER";
    data["y_align"] = "BOTTOM";
    data["x_pos"] = 0;
    data["y_pos"] = 28;
    data["color"] = (1, 1, 1);

    return data;
}