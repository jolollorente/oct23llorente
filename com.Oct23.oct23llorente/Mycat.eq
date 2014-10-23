
/*
 * Mycat
 * Created by Eqela Studio 2.0b7.4
 */

public class Mycat : SEEntity
{
    int w;
    int h;
    SESprite cat;

    public void initialize(SEResourceCache rsc)
    {
        base.initialize(rsc);
        w=get_scene_width();
        h=get_scene_height();
        rsc.prepare_image("mycat1", "cat", 0.15*w);
        cat=add_sprite_for_image(SEImage.for_resource("mycat1"));
       cat.move(0.5*w, 0.5*h);
    }

    public void tick(TimeVal now, double delta)
    {
        base.tick(now,delta);
        cat.move(MainScene.x,MainScene.y);
        
    }

    public void cleanup()
    {
        base.cleanup();
    }
}