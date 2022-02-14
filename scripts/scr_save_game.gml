///scr_save_game()

// Make sure player exists
if (!instance_exists(obj_player_stats)) exit;

// Create the save data structure
var save_data = ds_map_create();

with (obj_player_stats) {
    save_data[? "room"] = previous_room;
    save_data[? "x"] = player_xstart;
    save_data[? "y"] = player_ystart;
    //save_data[? "hp"] = hp;
    //save_data[? "maxhp"] = maxhp;
    save_data[? "xp"] = xp;
    save_data[? "maxxp"] = maxxp;
    save_data[? "level"] = level;
    save_data[? "attack"] = attack;
    save_data[? "money"] = money;
    save_data[? "quest1"] = global.quest1;
    save_data[? "questmeet"] = global.questmeet;
    save_data[? "quest1finished"] = global.quest1finished;
    save_data[? "quest2"] = global.quest2;
    save_data[? "quest2finished"] = global.quest2finished;
    save_data[? "quest3"] = global.quest3;
    save_data[? "quest3finished"] = global.quest3finished;
    save_data[? "quest4"] = global.quest4;
    save_data[? "quest4finished"] = global.quest4finished;
    save_data[? "quest5"] = global.quest5;
    save_data[? "quest5finished"] = global.quest5finished;
    save_data[? "quest6"] = global.quest6;
    save_data[? "quest6finished"] = global.quest6finished;
    save_data[? "quest7"] = global.quest7;
    save_data[? "quest7finished"] = global.quest7finished;
}



var save_string = json_encode(save_data);
ds_map_destroy(save_data);
save_string = base64_encode(save_string);

var file = file_text_open_write(working_directory + "mysavegame.txt");
file_text_write_string(file, save_string);
file_text_close(file);

show_message("Game Saved");




