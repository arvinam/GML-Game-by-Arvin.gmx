/// scr_load_game
var file = file_text_open_read(working_directory+"mysavegame.txt");
var save_string = file_text_read_string(file);
file_text_close(file);
save_string = base64_decode(save_string);
var save_data = json_decode(save_string);

var save_room = save_data[? "room"];
if (room != save_room) {
    room_goto(save_room);
}

with (obj_player_stats) {
    player_xstart = save_data[? "x"];
    player_ystart = save_data[? "y"];
    if (instance_exists(obj_player)){
        obj_player.x = player_xstart;
        obj_player.y = player_ystart;
        obj_player.phy_position_x = player_xstart;
        obj_player.phy_position_y = player_ystart;
    } else {
        instance_create(player_xstart, player_ystart, obj_player);
    }
    //hp = save_data[? "hp"];
    //maxhp = save_data[? "maxhp"];
    xp = save_data[? "xp"];
    maxxp = save_data[? "maxxp"];
    level = save_data[? "level"];
    attack = save_data[? "attack"];
    money = save_data[? "money"];
    global.quest1 = save_data[? "quest1"];
    global.questmeet = save_data[? "questmeet"];
    global.quest1finished = save_data[? "quest1finished"];
    global.quest2 = save_data[? "quest2"];
    global.quest2finished = save_data[? "quest2finished"];
    global.quest3 = save_data[? "quest3"];
    global.quest3finished = save_data[? "quest3finished"];
    global.quest4 = save_data[? "quest4"];
    global.quest4finished = save_data[? "quest4finished"];
    global.quest5 = save_data[? "quest5"];
    global.quest5finished = save_data[? "quest5finished"];
    global.quest6 = save_data[? "quest6"];
    global.quest6finished = save_data[? "quest6finished"];
    global.quest7 = save_data[? "quest7"];
    global.quest7finished = save_data[? "quest7finished"];
    
}

ds_map_destroy(save_data);
