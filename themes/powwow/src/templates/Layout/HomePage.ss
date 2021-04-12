




<% if $EnableStream  %>
    <% if $StreamVideoID %>
    <div class="stream-feature">
        <div class="embed-responsive embed-responsive-16by9">
          <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/$StreamVideoID"></iframe>
        </div>
        <div class="stream-caption my-3 mx-auto" style="max-width: 700px;">
            $StreamCaption
        </div>
    </div>
    <% end_if %>

    <% if $StreamChannelLink %>
        <p style="text-align: center;"><a href="$StreamChannelLink" target="_blank" rel="noopener" style="background: gold;display: inline-block;padding: 30px;font-size: 48px;color: black;text-transform: uppercase;line-height: 1;"><svg aria-hidden="true" width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-broadcast" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" d="M3.05 3.05a7 7 0 0 0 0 9.9.5.5 0 0 1-.707.707 8 8 0 0 1 0-11.314.5.5 0 0 1 .707.707zm2.122 2.122a4 4 0 0 0 0 5.656.5.5 0 0 1-.708.708 5 5 0 0 1 0-7.072.5.5 0 0 1 .708.708zm5.656-.708a.5.5 0 0 1 .708 0 5 5 0 0 1 0 7.072.5.5 0 1 1-.708-.708 4 4 0 0 0 0-5.656.5.5 0 0 1 0-.708zm2.122-2.12a.5.5 0 0 1 .707 0 8 8 0 0 1 0 11.313.5.5 0 0 1-.707-.707 7 7 0 0 0 0-9.9.5.5 0 0 1 0-.707z"></path>
                        <path d="M10 8a2 2 0 1 1-4 0 2 2 0 0 1 4 0z"></path>
                    </svg> &nbsp;View Livestream</a>
</p>

    <% end_if %>

<% end_if %>

 <div class="event-feature">
       $Event
  </div>
  <div id="content" class="homepage">

    <div id="leftcolumn">
     $Content1

    </div>

    <div id="rightcolumn">
        $Content2
    </div>
    <div class="clear"></div>
  </div>
