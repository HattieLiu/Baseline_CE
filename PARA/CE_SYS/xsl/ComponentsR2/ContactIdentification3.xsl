<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!--  *********** point <ContactIdentification1> Start ********** -->
	<xsl:template name="ContactIdentification3">
		<xsl:param name="ContactIdentification3"/>
		<xsl:param name="ContactIdentification3_parent"/>
		<xsl:variable name="ContactIdentification3_name" select="name($ContactIdentification3)"/>
		<xsl:variable name="ContactIdentification3_pname" select="$ContactIdentification3_parent"/>
		<xsl:variable name="CtctPrsnDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$ContactIdentification3_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="BICDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'BIC'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="NmDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'Nm'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="NmPrfxDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'NmPrfx'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="GvnNmDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'GvnNm'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="RoleDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'Role'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="PhneNbDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'PhneNb'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="FaxNbDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'FaxNb'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="EmailAdrDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'EmailAdr'"/>
			</xsl:call-template>
		</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$ContactIdentification3_pname"/>_<xsl:value-of select="$ContactIdentification3_name"/>')</xsl:attribute>
					<xsl:value-of select="$CtctPrsnDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$ContactIdentification3_pname"/>_<xsl:value-of select="$ContactIdentification3_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="75%" border="0" cellpadding="0" cellspacing="0" align="left">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:value-of select="$BICDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ContactIdentification3_pname"/>_<xsl:value-of select="$ContactIdentification3_name"/>_BIC</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ContactIdentification3_pname"/>_<xsl:value-of select="$ContactIdentification3_name"/>_BIC</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ContactIdentification3/BIC"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:value-of select="$NmDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ContactIdentification3_pname"/>_<xsl:value-of select="$ContactIdentification3_name"/>_Nm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ContactIdentification3_pname"/>_<xsl:value-of select="$ContactIdentification3_name"/>_Nm</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ContactIdentification3/Nm"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:value-of select="$NmPrfxDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ContactIdentification3_pname"/>_<xsl:value-of select="$ContactIdentification3_name"/>_NmPrfx</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ContactIdentification3_pname"/>_<xsl:value-of select="$ContactIdentification3_name"/>_NmPrfx</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ContactIdentification3/NmPrfx"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:value-of select="$GvnNmDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ContactIdentification3_pname"/>_<xsl:value-of select="$ContactIdentification3_name"/>_GvnNm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ContactIdentification3_pname"/>_<xsl:value-of select="$ContactIdentification3_name"/>_GvnNm</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ContactIdentification3/GvnNm"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:value-of select="$RoleDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ContactIdentification3_pname"/>_<xsl:value-of select="$ContactIdentification3_name"/>_Role</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ContactIdentification3_pname"/>_<xsl:value-of select="$ContactIdentification3_name"/>_Role</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ContactIdentification3/Role"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:value-of select="$PhneNbDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ContactIdentification3_pname"/>_<xsl:value-of select="$ContactIdentification3_name"/>_PhneNb</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ContactIdentification3_pname"/>_<xsl:value-of select="$ContactIdentification3_name"/>_PhneNb</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ContactIdentification3/PhneNb"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:value-of select="$FaxNbDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ContactIdentification3_pname"/>_<xsl:value-of select="$ContactIdentification3_name"/>_FaxNb</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ContactIdentification3_pname"/>_<xsl:value-of select="$ContactIdentification3_name"/>_FaxNb</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ContactIdentification3/FaxNb"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:value-of select="$EmailAdrDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ContactIdentification3_pname"/>_<xsl:value-of select="$ContactIdentification3_name"/>_EmailAdr</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ContactIdentification3_pname"/>_<xsl:value-of select="$ContactIdentification3_name"/>_EmailAdr</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ContactIdentification3/EmailAdr"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
							</xsl:element>
							<xsl:element name="TD">
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <ContactIdentification1> end ********** -->
</xsl:stylesheet>
