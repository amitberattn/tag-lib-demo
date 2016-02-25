<h1>Welcome Page</h1>

<ul>
<p>Link Usage</p>
<li>
    <g:link action="list">Users List using Action attribute</g:link>&nbsp;&nbsp;|

    <g:link url="[action: 'list']">Users List using Url attribute</g:link>&nbsp;&nbsp;|

    <g:link uri="/user/list">Users List using Uri attribute</g:link>&nbsp;&nbsp;|

    <a href="/TaglibBootcampDemo/user/list">Users List Using anchor tag</a>&nbsp;&nbsp;
</li>
<br><br>

<p>Create Link Usage</p>
<li>
    Action Attribute:::<g:createLink action="list"/>&nbsp;&nbsp;|

    Url Attribute::<g:createLink url="[action: 'list']"/>&nbsp;&nbsp;|

    Uri Attribute:::<g:createLink uri="/user/list"/>&nbsp;&nbsp;|

    Id Attribute:::<g:createLink action="list" id="101"/>&nbsp;&nbsp;|

    Params Attribute:::<g:createLink action="list" params="[name:'Richa', Dept:'grails']"/>&nbsp;&nbsp;|

%{--
    <a href="${createLink(action: 'list')}">Using anchor</a>
--}%


</li>
<br><br>

<p>Resource Usage</p>
<li>
    <g:resource dir="css" file="custom.css"/>&nbsp;&nbsp;|

%{--
    <link rel="stylesheet" href="${resource(dir: 'assets/stylesheets',file: 'application.css')}"/>&nbsp;&nbsp;
--}%

    <link rel="stylesheet" href="${resource(dir: 'css',file: 'custom.css')}"/>&nbsp;&nbsp;
</li>
</ul>