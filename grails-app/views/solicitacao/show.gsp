
<%@ page import="locadorav2.Solicitacao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'solicitacao.label', default: 'Solicitacao')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-solicitacao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-solicitacao" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list solicitacao">
			
				<g:if test="${solicitacaoInstance?.tempoSolicitado}">
				<li class="fieldcontain">
					<span id="tempoSolicitado-label" class="property-label"><g:message code="solicitacao.tempoSolicitado.label" default="Tempo Solicitado" /></span>
					
						<span class="property-value" aria-labelledby="tempoSolicitado-label"><g:fieldValue bean="${solicitacaoInstance}" field="tempoSolicitado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${solicitacaoInstance?.statusSolicitacao}">
				<li class="fieldcontain">
					<span id="statusSolicitacao-label" class="property-label"><g:message code="solicitacao.statusSolicitacao.label" default="Status Solicitacao" /></span>
					
						<span class="property-value" aria-labelledby="statusSolicitacao-label"><g:fieldValue bean="${solicitacaoInstance}" field="statusSolicitacao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${solicitacaoInstance?.jogo}">
				<li class="fieldcontain">
					<span id="jogo-label" class="property-label"><g:message code="solicitacao.jogo.label" default="Jogo" /></span>
					
						<span class="property-value" aria-labelledby="jogo-label"><g:link controller="jogo" action="show" id="${solicitacaoInstance?.jogo?.id}">${solicitacaoInstance?.jogo?.nome.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:solicitacaoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${solicitacaoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
