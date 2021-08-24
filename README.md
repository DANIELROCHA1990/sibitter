Ruby gems used in this build

Better Errors - For better errors

Bulma - for easy CSS. Feel free to roll your own styles and/or use a different framework.

Guard - Useful for live reloading our scss, js, css, and erb files, although it's capable of much more!

Guard is required for the Guard LiveReload gem to work

Guard LiveReload

Simple Form - For simple forms!

Devise - Effortless user roles and authentication

Gravatar_image_tag - Integrated image tag which spits out gravatars.


<div class="column">
  <nav class="box">
    <div class="column is-centered">
      <%= simple_form_for(@sibitt) do |f| %>
      <%= f.error_notification %>
        <div class="field">
          <div class="control">
            <%= f.button :submit, "Sign Up", class:"button is-info is-medium"
            link_to 'Sign Up',  new_user_registration_path  %>
            <p>or</p>
            <%= f.button :submit, "Sign In", class:"button is-info is-medium"
            link_to 'Sign In',  new_user_session_path  %>
          </div>
        </div>
      <% end %>
    </div>
  </nav>

  <div class="column">
    <nav class="panel">
      <p class="panel-heading">Trends</p>
        <a class="panel-block">
          Trend 1
        </a>
        <a class="panel-block">
          Trend 2
        </a>
        <a class="panel-block">
          Trend 3
        </a>
        <a class="panel-block">
          Trend 4
        </a>
        <a class="panel-block">
          Trend 5
        </a>
        <a class="panel-block">
          Trend 6
        </a>
    </nav>
  </div>
</div>