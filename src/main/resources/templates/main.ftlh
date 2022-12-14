<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
    <div>
        <@l.logout />
    </div>
    <div>
        <form action="" method="post">
            <input type="text" name="text" placeholder="Type a message"/>
            <input type="text" name="tag" placeholder="Type a tag"/>
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <button type="submit">Add a message</button>
        </form>
    </div>
    <h2>List of Messages</h2>
    <form method="get" action="/main">
        <input type="text" name="filter" value="${filter}">
        <button type="submit">Find</button>
    </form>
    <#list messages as message>
        <div>
            <b>${message.id}</b>
            <span>${message.text}</span>
            <i>${message.tag}</i>
            <strong>${message.authorName}</strong>
        </div>
        <#else >
        No messages
    </#list>
</@c.page>