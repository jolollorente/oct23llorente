
/*
 * MyNewClass
 * Created by Eqela Studio 2.0b7.4
 */

public class MyNewClass : SEEntity
{
    int w;
    int h;
    SESprite ball;
SESprite text;
    int mx;
    int my;
    int pX;
    int py;

    public void initialize(SEResourceCache rsc)
    {
        base.initialize(rsc);
        w=get_scene_width();
        h=get_scene_height();
        rsc.prepare_image("myball", "ball", 0.2*w);
        ball=add_sprite_for_image(SEImage.for_resource("myball"));
        ball.move(Math.random(0,w), Math.random(0,h));

		 rsc.prepare_font("myfont","trebuchet ms bold color=black", 80);
        text = add_sprite_for_text(" ","myfont");
    }
    public void tick(TimeVal now, double delta)
    {
        mx=ball.get_x();
        my= ball.get_y();
        pX= MainScene.x;
        py= MainScene.y;
        base.tick(now,delta);
        ball.move(mx+(pX-mx)/Math.random(100, 150),my+ (py-my)/Math.random(100,150));
	
  	if((mx/pX)==1 && (my/py)==1){
            text.set_text("GAME OVER!");
            text.move(0.35*w, 0.45*h);
        }
    }
    public void cleanup()
     {
        base.cleanup();
    }
}