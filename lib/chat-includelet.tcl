set chat_url "[ad_conn package_url]/chat/"

set context [list]
set user_id [ad_conn user_id]
set room_create_p [ad_permission_p $user_id chat_room_create]
set default_mode [ad_parameter DefaultClient chat "ajax"]
set num_rooms 0

db_multirow -extend { can_see_p } rooms rooms_list {} {
    set can_see_p 0
    if {($active_p eq "t" && $user_p eq "t") || ($admin_p eq "t")} {
        set can_see_p 1
        incr num_rooms
    }
}

ad_return_template
