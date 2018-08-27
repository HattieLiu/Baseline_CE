<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
   
    <xsl:include href="PostalAddress2.xsl"/>
<!--  *********** point <PartyIdentification5> Start ********** -->
	<xsl:template name="PartyIdentification5">
		<xsl:param name="PartyIdentification5"/>
		<xsl:param name="PartyIdentification5_parent"/>
		<xsl:variable name="PartyIdentification5_name" select="name($PartyIdentification5)"/>
		<xsl:variable name="PartyIdentification5_pname" select="$PartyIdentification5_parent"/>
		<xsl:variable name="NmDDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$PartyIdentification5_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="IdentificationDesc">
		<xsl:call-template name="getFldDesc">
			<xsl:with-param name="FldId" select="'Doc:Id'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$PartyIdentification5_pname"/>_<xsl:value-of select="$PartyIdentification5_name"/>')</xsl:attribute>
					<xsl:value-of select="$NmDDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:text>     </xsl:text>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$PartyIdentification5_pname"/>_<xsl:value-of select="$PartyIdentification5_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PartyIdentification5_pname"/>_<xsl:value-of select="substring($PartyIdentification5_name,5)"/>_Nm_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PartyIdentification5_pname"/>_<xsl:value-of select="substring($PartyIdentification5_name,5)"/>_Nm_check</xsl:attribute>
									<xsl:for-each select="$PartyIdentification5">
										<xsl:if test="Doc:Nm != '' ">
											<xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
								<xsl:text>Name:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PartyIdentification5_pname"/>_<xsl:value-of select="substring($PartyIdentification5_name,5)"/>_Nm</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PartyIdentification5_pname"/>_<xsl:value-of select="substring($PartyIdentification5_name,5)"/>_Nm</xsl:attribute>
									<xsl:attribute name="class">W_35</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PartyIdentification5/Doc:Nm"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PartyIdentification5_pname"/>_<xsl:value-of select="substring($PartyIdentification5_name,5)"/>_BEI_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PartyIdentification5_pname"/>_<xsl:value-of select="substring($PartyIdentification5_name,5)"/>_BEI_check</xsl:attribute>
									<xsl:for-each select="$PartyIdentification5">
										<xsl:if test="Doc:BEI != '' ">
											<xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
								<xsl:text>BEI:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PartyIdentification5_pname"/>_<xsl:value-of select="substring($PartyIdentification5_name,5)"/>_BEI</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PartyIdentification5_pname"/>_<xsl:value-of select="substring($PartyIdentification5_name,5)"/>_BEI</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PartyIdentification5/Doc:BEI"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PartyIdentification5_pname"/>_<xsl:value-of select="substring($PartyIdentification5_name,5)"/>_OthrSchme_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PartyIdentification5_pname"/>_<xsl:value-of select="substring($PartyIdentification5_name,5)"/>_OthrSchme_check</xsl:attribute>
									<xsl:for-each select="$PartyIdentification5">
										<xsl:if test="Doc:OthrSchme != '' ">
											<xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
								<xsl:text>OthrSchme:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PartyIdentification5_pname"/>_<xsl:value-of select="substring($PartyIdentification5_name,5)"/>_OthrSchme</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PartyIdentification5_pname"/>_<xsl:value-of select="substring($PartyIdentification5_name,5)"/>_OthrSchme</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PartyIdentification5/Doc:OthrSchme"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="PostalAddress2" select="$PartyIdentification5/Doc:PstlAdr"/>
						<xsl:call-template name="PostalAddress2">
							<xsl:with-param name="PostalAddress2" select="$PostalAddress2"/>
							<xsl:with-param name="PostalAddress2_parent">
							      <xsl:value-of select="$PartyIdentification5_pname"/>_<xsl:value-of select="$PartyIdentification5_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <PartyIdentification5> end ********** -->
</xsl:stylesheet>