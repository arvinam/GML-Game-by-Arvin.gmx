/// scr_attack_state
image_speed = .25;
switch (sprite_index) {
    case spr_player_down:
        sprite_index = spr_player_attack_down;
        break;
            
        case spr_player_up:
        sprite_index = spr_player_attack_up;
            break;
            
        case spr_player_left:
            sprite_index = spr_player_attack_left;
            break;
            
        case spr_player_right:
        sprite_index = spr_player_attack_right;
            break;      
    }


if (image_index >= 2 && interacted == false) {
    var xx = 0;
    var yy = 0;
    switch (sprite_index) {
        case spr_player_attack_down:
        xx = x;
        yy = y+12;
        break;
            
        case spr_player_attack_up:
        xx = x;
        yy = y-10;
        break;
            
        case spr_player_attack_left:
        xx = x-10;
        yy = y+2;
        break;
            
        case spr_player_attack_right:
        xx = x+10;
        yy = y+2;
        break;   
    }

    var interact = instance_create(xx,yy,obj_interact);
    interact.creator = id;
    interacted = true;
}

