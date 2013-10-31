module gui.main;

private
{
    import gtk.MainWindow;
    import gtk.Main;

    import gtk.VBox;
    import gtk.HBox;
    import gtk.MenuBar;
    import gtk.AccelGroup;

    import std.getopt;
    //import dtext;
}

class ApplicationLayer : MainWindow 
{
    this(string[] args)
    {
        /*string locale = BASE_LOCALE;
        getopt(args,
            "l|lang", &locale);
        defaultLocale = locale;*/

        Main.init(args);

        super("TalkComotron");
        add(setup);
        showAll();
    }

    /**
    *   Runs infinite event handling loop.
    */
    void runGui()
    {
        Main.run();
    }

    protected 
    {
        VBox setup()
        {
            auto box = new VBox(false, 0);
            box.packStart(getMenuBar(), false, false, 0);
            box.packStart(getMainArea(), true, true, 0);

            return box;
        }

        MenuBar getMenuBar()
        {
            auto accelGroup = new AccelGroup();
            auto menuBar = new MenuBar();

            //auto menu = menuBar.append(_("_File"));

            return menuBar;
        }

        HBox getMainArea()
        {
            auto box = new HBox(false, 0);
            return box;
        }
    }
}