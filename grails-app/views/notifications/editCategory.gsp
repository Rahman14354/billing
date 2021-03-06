%{--
     jBilling - The Enterprise Open Source Billing System
   Copyright (C) 2003-2011 Enterprise jBilling Software Ltd. and Emiliano Conde

   This file is part of jbilling.
   
   jbilling is free software: you can redistribute it and/or modify
   it under the terms of the GNU Affero General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   jbilling is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU Affero General Public License for more details.
   
   You should have received a copy of the GNU Affero General Public License
   along with jbilling.  If not, see <http://www.gnu.org/licenses/>.
 
  --}%

<%@ page contentType="text/html;charset=UTF-8" %>

<%--
  Shows an edit form for a currency (used to create new currencies).

  @author Shweta Gupta
  @since  11-Jun-2012
--%>

<html>
<head>
    <meta name="layout" content="main"/>
</head>

<body>
<div class="form-edit">

    <g:set var="isNew" value="${!category || !category?.id || category?.id == 0}"/>

    <div class="heading">
        <strong>
            <g:if test="${isNew}">
                <g:message code="notification.category.add.title"/>
            </g:if>
            <g:else>
                <g:message code="notification.category.edit.title"/>
            </g:else>
        </strong>
    </div>

    <div class="form-hold">
        <g:form name="save-category-form" url="[action: 'saveCategory']">
            <fieldset>
                <div class="form-columns">
                    <div class="column">
                        <g:applyLayout name="form/text">
                            <content tag="label"><g:message code="notification.category.id"/></content>

                            <g:if test="${isNew}"><em><g:message code="prompt.id.new"/></em></g:if>
                            <g:else>${category?.id}</g:else>

                            <g:hiddenField name="id" value="${category?.id}"/>
                        </g:applyLayout>

                        <g:applyLayout name="form/input">
                            <content tag="label"><g:message code="notification.category.name"/></content>
                            <content tag="label.for">description</content>
                            <g:textField class="field" name="description" value="${category?.description}"/>
                        </g:applyLayout>
                    </div>
                </div>

                <div>
                    <br/>&nbsp;
                </div>

                <div class="buttons">
                    <ul>
                        <li><a onclick="$('#save-category-form').submit();" class="submit save"><span><g:message
                                code="button.save"/></span></a></li>
                        <li><g:link action="list" class="submit cancel"><span><g:message
                                code="button.cancel"/></span></g:link></li>
                    </ul>
                </div>
            </fieldset>
        </g:form>
    </div>

</div>
</div>
</body>
</html>
