NAVIGATION: -------------------------------- backup
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <a class="navbar-brand" href="#">Task Menager</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">

        <ul class="navbar-nav mr-auto">
          
        </ul>

      </div>
    </nav>

<% if current_user %>
            <li class="nav-item active">
                <button type="button" class="btn btn-outline-secondary"> Edit profile</button>
            </li>
            <li class="nav-item">
                <button type="button" class="btn btn-outline-secondary" > SignOut</button>
            </li>
            <%= link_to ' Edit profile | ',  edit_user_registration_path %>
            <%= link_to ' SignOut | ',  destroy_user_session_path, method: :delete %>
<% else %>
            <li class="nav-item active">
                <button type="button" class="btn btn-outline-secondary">LogIn</button>
            </li>
            <li class="nav-item">
                <button type="button" class="btn btn-outline-secondary" >SignUp</button>
            </li>
            <%= link_to 'SignUp |', new_user_registration_path %>
            <%= link_to 'LogIn |',  new_user_session_path %>   
<% end %>
