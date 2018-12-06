<if @rooms:rowcount@ eq 0 or @num_rooms@ eq 0>
<p><i>#chat.There_are_no_rooms_available#</i></p>
</if>
<else>
  <table border=0>
    <multiple name=rooms>
    <if @rooms.can_see_p@ eq 1>
      <tr>
        <td valign=top><a href="@rooms.base_url@room-enter?room_id=@rooms.room_id@">@rooms.pretty_name@</a></td>
        <td valign=top>
        <if @rooms.admin_p@ eq "t">
          [<a href="@rooms.base_url@room?room_id=@rooms.room_id@">#chat.room_admin#</a>]
        </if>
        <if @rooms.active_p@ ne "t">
          (NO #chat.Active#)
        </if>
        <td valign=top>
            <I>@rooms.description@</I>
        </td>
      </tr>
    </if>
    </multiple>
  </table>
</else>
