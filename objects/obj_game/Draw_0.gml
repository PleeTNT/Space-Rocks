switch(room){
	case rm_game:
		draw_text(20,20,"SCORE: "+string(score));
		draw_text(20,40,"LIVES: "+string(lives));
		break;
		
	case rm_start:
		draw_set_halign(fa_center);
		draw_text_transformed_color(
			room_width/2, 100, "Space Rocks",
			3, 3, 0, c_red,c_red,c_red,c_red, 1
		);
		draw_text(
			room_width/2, 200,
@"Break all the rocks to win!

Up arrow to move forward
Left and Right arrow to rotate
Space to shoot

Press enter to begin!
"
		);
		draw_set_halign(fa_left);
		break;
		
	case rm_lose:
		draw_set_halign(fa_center);
		var c = c_blue;
		draw_text_transformed_color(
			room_width/2, 150, "You Lost :(",
			3,3,0,c,c,c,c,1
		);
		draw_text(
			room_width/2,250,
			"Final Score: "+string(score)
		);
		draw_text(
			room_width/2,300,
			"Press enter to restart"
		);
		draw_set_halign(fa_left);
		break;
		
	case rm_win:
		draw_set_halign(fa_center);
		var c = c_lime;
		draw_text_transformed_color(
			room_width/2, 200, "You Won!",
			3,3,0,c,c,c,c,1
		);
		draw_text(
			room_width/2,300,
			"Press enter to play again"
		);
		draw_set_halign(fa_left);
		break;
}