ad_library {

    Chat Includelet Install library
    
    Procedures that deal with installing, instantiating, mounting.

    @creation-date 2008-08-13
    @author Don Baccus <dhogaza@pacifier.com>
    @cvs-id 
}

namespace eval chat_includelet::install {}

ad_proc -private chat_includelet::install::package_install {} {
    Package installation callback proc
} {

    # Admin includelet
    layout::includelet::new \
        -name chat_admin_includelet \
        -description #chat-includelet.admin_description# \
        -title #chat-includelet.admin_pretty_name# \
        -application chat \
        -template /packages/chat-includelet/lib/chat-admin-includelet \
        -required_privilege admin

    # User includelet
    layout::includelet::new \
        -name chat_includelet \
        -description #chat-includelet.description# \
        -title #chat-includelet.pretty_name# \
        -application chat \
        -template /packages/chat-includelet/lib/chat-includelet
}

ad_proc -private chat_includelet::install::package_uninstall {} {
    Package uninstallation callback proc
} {
    layout::includelet::delete -name chat_includelet
    layout::includelet::delete -name chat_admin_includelet
}

