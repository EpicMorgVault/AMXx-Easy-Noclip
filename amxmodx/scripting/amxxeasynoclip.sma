#include <amxmodx>
#include <amxmisc>
#include <fun>

#define PLUGIN "Easy NoClip"
#define VERSION "0.3"
#define AUTHOR "EpicMorg"


public plugin_init() {
	register_plugin(PLUGIN, VERSION, AUTHOR)
	register_concmd("+noclip", "ClCmdOnNoClip")
	register_concmd("-noclip", "ClCmdOffNoClip") 
}

public ClCmdOnNoClip(id)
        {
                //if(!(get_user_flags(id) & ADMIN_IMMUNITY))
                if(!(get_user_flags(id) & ADMIN_LEVEL_C))
                        return PLUGIN_CONTINUE;
         
                set_user_noclip(id, 1)
                return PLUGIN_HANDLED;
        }
         
public ClCmdOffNoClip(id)
        {
                //if(!(get_user_flags(id) & ADMIN_IMMUNITY))
                if(!(get_user_flags(id) & ADMIN_LEVEL_C))
                        return PLUGIN_CONTINUE;
         
                set_user_noclip(id, 0)
                return PLUGIN_HANDLED;
}