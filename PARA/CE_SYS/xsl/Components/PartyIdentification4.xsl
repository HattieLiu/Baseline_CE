<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">

<!--  *********** point <PartyIdentification4> Start ********** -->
	<xsl:template name="PartyIdentification4">
		<xsl:param name="PartyIdentification4"/>
		<xsl:param name="Part_FullName"/>
		<xsl:variable name="Part_FullName_fox" select="$Part_FullName"/>
		<xsl:variable name="PartyIdentification4_name" select="name($PartyIdentification4)"/>

		<xsl:variable name="buyrDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$PartyIdentification4_name"/>
			</xsl:call-template>
		</xsl:variable>

		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$Part_FullName_fox"/>_<xsl:value-of select="$PartyIdentification4_name"/>')</xsl:attribute>
					<xsl:value-of select="$buyrDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:text>     </xsl:text>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$Part_FullName_fox"/>_<xsl:value-of select="$PartyIdentification4_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
						
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:50%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="substring($PartyIdentification4_name,5)"/>_Nm_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="substring($PartyIdentification4_name,5)"/>_Nm_check</xsl:attribute>
									<xsl:for-each select="$PartyIdentification4">
										<xsl:if test="Doc:Nm != '' ">
											<xsl:attribute name="checked">true</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
								<!-- <xsl:value-of select="$NmDesc"/> -->
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PartyIdentification4_name"/>_Nm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PartyIdentification4_name"/>_Nm</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PartyIdentification4/Doc:Nm"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:50%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="substring($PartyIdentification4_name,5)"/>_Nm_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="substring($PartyIdentification4_name,5)"/>_Nm_check</xsl:attribute>
									<xsl:for-each select="$PartyIdentification4">
										<xsl:if test="Doc:BEI != '' ">
											<xsl:attribute name="checked">true</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
								<xsl:text>BEI:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PartyIdentification4_name"/>_BEI</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PartyIdentification4_name"/>_BEI</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PartyIdentification4/Doc:BEI"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						
						<xsl:variable name="PostalAddress2" select="$PartyIdentification4/Doc:PstlAdr"/>
						<xsl:call-template name="PostalAddress2">
							<xsl:with-param name="PostalAddress2" select="$PostalAddress2"/>
							<xsl:with-param name="Post_FullName">
								<xsl:value-of select="$Part_FullName_fox"/>_<xsl:value-of select="$PartyIdentification4_name"/>
							</xsl:with-param>
						</xsl:call-template>				

					</table>
				</xsl:element>
			</xsl:element>
		</tr><!--
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="height">3</xsl:attribute>
			</xsl:element>
		</tr>-->
	</xsl:template>
	<!--  *********** point <PartyIdentification4> end ********** -->
	</xsl:stylesheet>