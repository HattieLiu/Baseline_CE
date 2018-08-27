<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
	<xsl:include href="Adr.xsl"/>
	<xsl:template name="FnlAgt">
		<xsl:param name="FnlAgt"/>
		<xsl:param name="FnlAgt_parentName"/>
		<xsl:variable name="FnlAgt_name" select="name($FnlAgt)"/>
		<xsl:variable name="FnlAgt_pName" select="$FnlAgt_parentName"/>
		<xsl:variable name="FnlAgtDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$FnlAgt_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="BICDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:BIC'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="NmAndAdrDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:NmAndAdr'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="NmDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:Nm'"/>
			</xsl:call-template>
		</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:element name="input">
					<xsl:attribute name="type">checkbox</xsl:attribute>
					<xsl:attribute name="name"><xsl:value-of select="$FnlAgt_name"/>_check</xsl:attribute>
					<xsl:attribute name="onClick">clickcheck(this)</xsl:attribute>
					<xsl:attribute name="ck">N</xsl:attribute>
				</xsl:element>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$FnlAgt_pName"/>_<xsl:value-of select="$FnlAgt_name"/>')</xsl:attribute>
					<xsl:value-of select="$FnlAgtDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:text>     </xsl:text>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$FnlAgt_pName"/>_<xsl:value-of select="$FnlAgt_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<xsl:attribute name="ck">N</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right" id="Doc:FnlAgt">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$FnlAgt_pName"/>_<xsl:value-of select="$FnlAgt_name"/>_check</xsl:attribute>
									<xsl:attribute name="tx"><xsl:value-of select="$FnlAgt_pName"/>_<xsl:value-of select="$FnlAgt_name"/>_ck</xsl:attribute>
									<xsl:attribute name="onClick">radioCheck_input()</xsl:attribute>
									<!--<xsl:if test="$FnlAgt_name/Doc:BIC != ''">
										<xsl:attribute name="checked">true</xsl:attribute>
									</xsl:if>-->
								</xsl:element>
								<xsl:value-of select="$BICDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name">Doc:BIC</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$BICDesc"/></xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$FnlAgt/Doc:BIC"/></xsl:attribute>
									<xsl:attribute name="multi">N</xsl:attribute>
									<xsl:attribute name="tbi">Doc:FnlAgt</xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$FnlAgt_pName"/>_<xsl:value-of select="$FnlAgt_name"/>_check</xsl:attribute>
									<xsl:attribute name="tx"><xsl:value-of select="$FnlAgt_pName"/>_<xsl:value-of select="$FnlAgt_name"/>_ck</xsl:attribute>
									<xsl:attribute name="onClick">radioCheck_input()</xsl:attribute>
									<!--<xsl:if test="$FnlAgt_name/Doc:NmAndAdrDesc/Doc:Nm != ''">
										<xsl:attribute name="checked">true</xsl:attribute>
									</xsl:if>
									<xsl:if test="$FnlAgt_name/Doc:NmAndAdrDesc/Doc:StrtNm != ''">
										<xsl:attribute name="checked">true</xsl:attribute>
									</xsl:if>
									<xsl:if test="$FnlAgt_name/Doc:NmAndAdrDesc/Doc:PstCdId != ''">
										<xsl:attribute name="checked">true</xsl:attribute>
									</xsl:if>
									<xsl:if test="$FnlAgt_name/Doc:NmAndAdrDesc/Doc:TwnNm != ''">
										<xsl:attribute name="checked">true</xsl:attribute>
									</xsl:if>
									<xsl:if test="$FnlAgt_name/Doc:NmAndAdrDesc/Doc:CtrySubDvsn != ''">
										<xsl:attribute name="checked">true</xsl:attribute>
									</xsl:if>
									<xsl:if test="$FnlAgt_name/Doc:NmAndAdrDesc/Doc:Ctry != ''">
										<xsl:attribute name="checked">true</xsl:attribute>
									</xsl:if>-->
								</xsl:element>
								<a>
									<xsl:attribute name="class">Heading3</xsl:attribute>
									<xsl:attribute name="style">cursor:hand</xsl:attribute>
									<xsl:attribute name="onClick">Swap('<xsl:value-of select="$FnlAgt_pName"/>_<xsl:value-of select="$FnlAgt_name"/>_Doc:NmAndAdrDesc')</xsl:attribute>
									<xsl:value-of select="$NmAndAdrDesc"/>
								</a>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:element name="DIV">
									<xsl:attribute name="id"><xsl:value-of select="$FnlAgt_pName"/>_<xsl:value-of select="$FnlAgt_name"/>_Doc:NmAndAdrDesc</xsl:attribute>
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
													<xsl:attribute name="id"><xsl:value-of select="$FnlAgt_name"/>_NmAndAdr_Nm</xsl:attribute>
													<xsl:attribute name="class">CHAR_M</xsl:attribute>
													<xsl:attribute name="length">35</xsl:attribute>
													<xsl:attribute name="maxlength">35</xsl:attribute>
													<xsl:attribute name="value"><xsl:value-of select="$FnlAgt_name/Doc:NmAndAdr/Doc:Nm"/></xsl:attribute>
													<xsl:attribute name="ch"><xsl:value-of select="$FnlAgt_pName"/>_<xsl:value-of select="$FnlAgt_name"/>_ck</xsl:attribute>
													<xsl:attribute name="multi">N</xsl:attribute>
												</xsl:element>
											</xsl:element>
										</tr>
										<xsl:variable name="Adr" select="$FnlAgt/Doc:NmAndAdr/Doc:Adr"/>
										<xsl:variable name="NmAndAdr" select="'Doc:NmAndAdr'"/>
										<xsl:call-template name="Adr">
											<xsl:with-param name="Adr" select="$Adr"/>
											<xsl:with-param name="Adr_parentName">
												<xsl:value-of select="$FnlAgt_parentName"/>_<xsl:value-of select="$FnlAgt"/>_<xsl:value-of select="$NmAndAdr"/>
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
