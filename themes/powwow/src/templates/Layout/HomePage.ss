<% if $EnableStream && $StreamVideoID %>
    <div class="home-embed">
        <div class="embed-responsive embed-responsive-16by9">
          <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/$StreamVideoID"></iframe>
        </div>
    </div>
<% end_if %>



 <div id="eventfeature">
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
