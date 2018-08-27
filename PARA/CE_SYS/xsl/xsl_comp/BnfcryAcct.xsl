<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
	<xsl:include href="Id.xsl"/>
	<xsl:template name="BnfcryAcct">
		<xsl:param name="BnfcryAcct"/>
		<xsl:param name="BnfcryAcct_parentName"/>
		<xsl:variable name="BnfcryAcct_name" select="name($BnfcryAcct)"/>
		<xsl:variable name="BnfcryAcct_pName" select="$BnfcryAcct_parentName"/>
		<xsl:variable name="BnfcryAcctDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$BnfcryAcct_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="NmDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:Nm'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="IdDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:Id'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="NmAndIdDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:NmAndId'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="IBANDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:IBAN'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="BBANDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:BBAN'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="UPICDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:UPIC'"/>
			</xsl:call-template>
		</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:element name="input">
					<xsl:attribute name="type">checkbox</xsl:attribute>
					<xsl:attribute name="name"><xsl:value-of select="$BnfcryAcct_name"/>_check</xsl:attribute>
					<xsl:attribute name="onClick">clickcheck(this)</xsl:attribute>
					<xsl:attribute name="ck">N</xsl:attribute>
				</xsl:element>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$BnfcryAcct_pName"/>_<xsl:value-of select="$BnfcryAcct_name"/>')</xsl:attribute>
					<xsl:value-of select="$BnfcryAcctDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:text>     </xsl:text>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$BnfcryAcct_pName"/>_<xsl:value-of select="$BnfcryAcct_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<xsl:attribute name="ck">N</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right" id="Doc:BnfcryAcct">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$BnfcryAcct_pName"/>_<xsl:value-of select="$BnfcryAcct_name"/>_check</xsl:attribute>
									<xsl:attribute name="tx"><xsl:value-of select="$BnfcryAcct_pName"/>_<xsl:value-of select="$BnfcryAcct_name"/>_ck</xsl:attribute>
									<xsl:attribute name="onClick">radioCheck_input()</xsl:attribute>
									<!--<xsl:if test="$BnfcryAcct_name/Doc:Nm != ''">
										<xsl:attribute name="checked">true</xsl:attribute>
									</xsl:if>-->
								</xsl:element>
								<xsl:value-of select="$NmDesc"/>
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name">Doc:Nm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$NmDesc"/></xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$BnfcryAcct/Doc:Nm"/></xsl:attribute>
									<xsl:attribute name="multi">N</xsl:attribute>
									<xsl:attribute name="tbi">Doc:BnfcryAcct</xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$BnfcryAcct_pName"/>_<xsl:value-of select="$BnfcryAcct_name"/>_check</xsl:attribute>
									<xsl:attribute name="tx"><xsl:value-of select="$BnfcryAcct_pName"/>_<xsl:value-of select="$BnfcryAcct_name"/>_ck</xsl:attribute>
									<xsl:attribute name="onClick">radioCheck_input()</xsl:attribute>
									<!--<xsl:if test="$BnfcryAcct_name/Doc:Id/Doc:IBAN!= ''">
										<xsl:attribute name="checked">true</xsl:attribute>
									</xsl:if>
									<xsl:if test="$BnfcryAcct_name/Doc:Id/Doc:BBAN!= ''">
										<xsl:attribute name="checked">true</xsl:attribute>
									</xsl:if>
									<xsl:if test="$BnfcryAcct_name/Doc:Id/Doc:UPIC!= ''">
										<xsl:attribute name="checked">true</xsl:attribute>
									</xsl:if>
									<xsl:if test="$BnfcryAcct_name/Doc:Id/Doc:Id!= ''">
										<xsl:attribute name="checked">true</xsl:attribute>
									</xsl:if>-->
								</xsl:element>
								<a>
									<xsl:attribute name="class">Heading3</xsl:attribute>
									<xsl:attribute name="style">cursor:hand</xsl:attribute>
									<xsl:attribute name="onClick">Swap('<xsl:value-of select="$BnfcryAcct_pName"/>_<xsl:value-of select="$BnfcryAcct_name"/>_Doc:Id')</xsl:attribute>
									<xsl:value-of select="$IdDesc"/>
								</a>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:element name="DIV">
									<xsl:attribute name="id"><xsl:value-of select="$BnfcryAcct_pName"/>_<xsl:value-of select="$BnfcryAcct_name"/>_Doc:Id</xsl:attribute>
									<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px  #000000;width:95%;</xsl:attribute>
									<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
										<xsl:variable name="Id" select="$BnfcryAcct/Doc:NmAndId/Doc:Id"/>
										<xsl:variable name="NmAndId" select="'Doc:NmAndId'"/>
										<xsl:call-template name="Id">
											<xsl:with-param name="Id" select="$Id"/>
											<xsl:with-param name="Id_parentName">
												<xsl:value-of select="$BnfcryAcct_parentName"/>_<xsl:value-of select="$BnfcryAcct"/>_<xsl:value-of select="$NmAndId"/>
											</xsl:with-param>
										</xsl:call-template>
									</table>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$BnfcryAcct_pName"/>_<xsl:value-of select="$BnfcryAcct_name"/>_check</xsl:attribute>
									<xsl:attribute name="tx"><xsl:value-of select="$BnfcryAcct_pName"/>_<xsl:value-of select="$BnfcryAcct_name"/>_ck</xsl:attribute>
									<xsl:attribute name="onClick">radioCheck_input()</xsl:attribute>
									<!--<xsl:if test="$BnfcryAcct_name/Doc:NmAndId/Doc:Nm != ''">
										<xsl:attribute name="checked">true</xsl:attribute>
									</xsl:if>
									<xsl:if test="$BnfcryAcct_name/Doc:Id/Doc:IBAN!= ''">
										<xsl:attribute name="checked">true</xsl:attribute>
									</xsl:if>
									<xsl:if test="$BnfcryAcct_name/Doc:Id/Doc:BBAN!= ''">
										<xsl:attribute name="checked">true</xsl:attribute>
									</xsl:if>
									<xsl:if test="$BnfcryAcct_name/Doc:Id/Doc:UPIC!= ''">
										<xsl:attribute name="checked">true</xsl:attribute>
									</xsl:if>
									<xsl:if test="$BnfcryAcct_name/Doc:Id/Doc:Id!= ''">
										<xsl:attribute name="checked">true</xsl:attribute>
									</xsl:if>-->
								</xsl:element>
								<a>
									<xsl:attribute name="class">Heading3</xsl:attribute>
									<xsl:attribute name="style">cursor:hand</xsl:attribute>
									<xsl:attribute name="onClick">Swap('<xsl:value-of select="$BnfcryAcct_pName"/>_<xsl:value-of select="$BnfcryAcct_name"/>_Doc:NmAndId')</xsl:attribute>
									<xsl:value-of select="$NmAndIdDesc"/>
								</a>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:element name="DIV">
									<xsl:attribute name="id"><xsl:value-of select="$BnfcryAcct_pName"/>_<xsl:value-of select="$BnfcryAcct_name"/>_Doc:NmAndId</xsl:attribute>
									<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
									<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
										<tr>
											<xsl:element name="TD">
												<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
												<xsl:attribute name="height">25</xsl:attribute>
												<xsl:value-of select="$NmDesc"/>
												<xsl:element name="INPUT">
													<xsl:attribute name="type">text</xsl:attribute>
													<xsl:attribute name="name">Doc:Nm</xsl:attribute>
													<xsl:attribute name="id"><xsl:value-of select="$BnfcryAcct_name"/>_NmAndId_Nm</xsl:attribute>
													<xsl:attribute name="class">CHAR_M</xsl:attribute>
													<xsl:attribute name="length">35</xsl:attribute>
													<xsl:attribute name="maxlength">35</xsl:attribute>
													<xsl:attribute name="value"><xsl:value-of select="$BnfcryAcct_name/Doc:NmAndId/Doc:Nm"/></xsl:attribute>
													<xsl:attribute name="ch"><xsl:value-of select="$BnfcryAcct_pName"/>_<xsl:value-of select="$BnfcryAcct_name"/>_ck</xsl:attribute>
													<xsl:attribute name="multi">N</xsl:attribute>
												</xsl:element>
											</xsl:element>
										</tr>
										<xsl:variable name="Id" select="$BnfcryAcct/Doc:NmAndId/Doc:Id"/>
										<xsl:variable name="NmAndId" select="'Doc:NmAndId'"/>
										<xsl:call-template name="Id">
											<xsl:with-param name="Id" select="$Id"/>
											<xsl:with-param name="Id_parentName">
												<xsl:value-of select="$BnfcryAcct_parentName"/>_<xsl:value-of select="$BnfcryAcct"/>_<xsl:value-of select="$NmAndId"/>
											</xsl:with-param>
										</xsl:call-template>
									</table>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
