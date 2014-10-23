
/*
 * MyNewClass
 * Created by Eqela Studio 2.0b7.4
 */

public class MyNewClass : SEEntity
{
    int w;
    int h;
    SESprite ball;
    int mx;
    int my;
    int pX;
    int py;

    public void initialize(SEResourceCache rsc)
    {
        base.initialize(rsc);
        w=get_scene_width();
        h=get_scene_height();
        rsc.prepare_image("myball", "ball", 0.1*w);
        ball=add_sprite_for_image(SEImage.for_resource("myball"));
        ball.move(Math.random(0,w), Math.random(0,h));
    }
    public void tick(TimeVal now, double delta)
    {
        mx=ball.get_x();
        my= ball.get_y();
        pX= MainScene.x;
        py= MainScene.y;
        base.tick(now,delta);
        ball.move(mx+(pX-mx)/Math.random(50,100),my+ (py-my)/Math.random(150,100));
    }
    public void cleanup()
     {
        base.cleanup();
    }
}