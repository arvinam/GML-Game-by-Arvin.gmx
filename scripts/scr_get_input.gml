///scr_get_input
right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);
attack_key = keyboard_check(ord('X'));
interact_key = keyboard_check(ord('E'));
pause_key = keyboard_check_pressed(vk_escape);
spell_key = keyboard_check_pressed(ord('C'));

// Get the axis
xaxis = (right_key - left_key);
yaxis = (down_key - up_key);


