init()
{
    initialize_vars();

/* Fill up fields that you wish to force characters one, leave ones that you don't want to override as undefined */

/* 
    CIA / CDC maps 
    Allowed values: "cia", "cdc" 
*/
    level.B2_CHARACTERS["town"]["white"] = undefined;
    level.B2_CHARACTERS["town"]["blue"] = undefined;
    level.B2_CHARACTERS["town"]["yellow"] = undefined;
    level.B2_CHARACTERS["town"]["green"] = undefined;

/* 
    Tranzit characters maps
    Allowed values: "russman", "stuhlinger", "misty", "marlton"
*/
    level.B2_CHARACTERS["tranzit"]["white"] = undefined;
    level.B2_CHARACTERS["tranzit"]["blue"] = undefined;
    level.B2_CHARACTERS["tranzit"]["yellow"] = undefined;
    level.B2_CHARACTERS["tranzit"]["green"] = undefined;

/* 
    Mob characters
    Allowed values: "finn", "sal", "billy", "weasel"
*/
    level.B2_CHARACTERS["mob"]["white"] = "weasel";
    level.B2_CHARACTERS["mob"]["blue"] = undefined;
    level.B2_CHARACTERS["mob"]["yellow"] = undefined;
    level.B2_CHARACTERS["mob"]["green"] = undefined;

/* 
    Origins characters
    Allowed values: "dempsey", "nikolai", "richtofen", "takeo"
*/
    level.B2_CHARACTERS["origins"]["white"] = undefined;
    level.B2_CHARACTERS["origins"]["blue"] = undefined;
    level.B2_CHARACTERS["origins"]["yellow"] = undefined;
    level.B2_CHARACTERS["origins"]["green"] = undefined;

    thread clear_variable();
}

initialize_vars()
{
    level.B2_CHARACTERS = array();
    level.B2_CHARACTERS["town"] = array();
    level.B2_CHARACTERS["tranzit"] = array();
    level.B2_CHARACTERS["mob"] = array();
    level.B2_CHARACTERS["origins"] = array();
}

clear_variable()
{
    level endon("end_game");

    level waittill("end_of_round");
    level.B2_CHARACTERS = undefined;
}