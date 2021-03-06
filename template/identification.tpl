<nav class="navbar navbar-default subnav subnav-fixed" role="navigation"></nav>

{include file='infos_errors.tpl'}

<div class="container">
    <ol class="breadcrumb">
        <li><a href="{$U_HOME}">{'Home'|@translate}</a></li>
        <li>{'Log In'|@translate}</li>
    </ol>

    <form action="{$F_LOGIN_ACTION}" method="post" name="login_form" class="form-horizontal">
        <div class="panel panel-primary">
            <div class="panel-heading">
                {'Log In'|@translate}
            </div>
            <div class="panel-body">
                <div class="form-group">
                    <label for="username" class="col-sm-2 control-label">{'Username'|@translate}</label>
                    <div class="col-sm-4">
                        <input tabindex="1" class="form-control" type="text" name="username" id="username"
                               maxlength="40" placeholder="{'Username'|@translate}">
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-sm-2 control-label">{'Password'|@translate}</label>
                    <div class="col-sm-4">
                        <input tabindex="2" class="form-control" type="password" name="password" id="password"
                               maxlength="25" placeholder="{'Password'|@translate}">
                    </div>
                </div>
                {if $authorize_remembering }
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <div class="checkbox">
                                <label>
                                    <input tabindex="3" type="checkbox" name="remember_me" id="remember_me"
                                           value="1"> {'Auto login'|@translate}
                                </label>
                            </div>
                        </div>
                    </div>
                {/if}
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <input type="hidden" name="redirect" value="{$U_REDIRECT|@urlencode}">
                        <input tabindex="4" type="submit" name="login" value="{'Submit'|@translate}"
                               class="btn btn-default btn-primary">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        {if isset($U_REGISTER)}
                            <a href="{$U_REGISTER}" title="{'Register'|@translate}"
                               class="pwg-state-default pwg-button">
                                <span class="glyphicon glyphicon-user"></span> {'Register'|@translate}
                            </a>
                        {/if}
                        &nbsp;&nbsp;&nbsp;
                        {if isset($U_LOST_PASSWORD)}
                            <a href="{$U_LOST_PASSWORD}" title="{'Forgot your password?'|@translate}"
                               class="pwg-state-default pwg-button">
                                <span class="glyphicon glyphicon-lock"></span> {'Forgot your password?'|@translate}
                            </a>
                        {/if}
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>

<script type="text/javascript"><!--
    document.getElementById('username').focus();
    //--></script>
