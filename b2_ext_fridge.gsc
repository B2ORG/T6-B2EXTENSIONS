#include common_scripts\utility;

init()
{
    level.B2_FRIDGE = ::set_fridge;
    thread clear_variable();
}

/*  Add a case for your name like so:
        case "Zi0":
    Or alternatively extract code from switch statement enterely to have it run independent
    Then either copy the foreach or create if statements for either names or player indexes (to manage coop players)
    Afterwards call pointer from func variable on players, and as function argument include string representation of the weapons
    Additionaly ifs for maps are allowed
*/

set_fridge(func)
{
    switch (level.players[0].name)
    {
        default:
            foreach (player in level.players)
            {
                if (level.script == "zm_transit")
                    player [[func]]("mp5k_upgraded_zm");
                else if (level.script == "zm_highrise" || level.script == "zm_buried")
                    player [[func]]("an94_upgraded_zm+mms");
            }
    }
}

clear_variable()
{
    level endon("end_game");

    level waittill("end_of_round");
    level.B2_FRIDGE = undefined;
}