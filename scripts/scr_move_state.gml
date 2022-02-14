/// scr_move_state

if (obj_input.attack_key) {
    image_index = 0;
    state = scr_attack_state;
}

if (obj_input.interact_key) {
    image_index = 0;
    state = scr_interact_state;
}

if (obj_input.spell_key) {
    
    var p = instance_create(x,y,obj_projectile);
    var xforce = lengthdir_x(5, face*90);
    var yforce = lengthdir_y(5, face*90);
    p.creator = id;
    with (p) {
        physics_apply_impulse(x, y, xforce, yforce);
    }
}

// Get direction
dir = point_direction(0, 0, obj_input.xaxis, obj_input.yaxis);


// Get the length
if (obj_input.xaxis == 0 and obj_input.yaxis == 0) {
    len = 0;
} else {
    len = spd;
    scr_get_face();
}

// Get hspd and vspd
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

// Move
phy_position_x += hspd;
phy_position_y += vspd;

// Control the sprite
image_speed = .2;
if (len == 0) image_index = 0;

// Facing
switch (face) {
    case RIGHT:
        sprite_index = spr_player_right;
        break;
        
    case UP:
        sprite_index = spr_player_up;
        break;
        
    case DOWN:
        sprite_index = spr_player_down;
        break;
        
    case LEFT:
        sprite_index = spr_player_left;
        break;
}








