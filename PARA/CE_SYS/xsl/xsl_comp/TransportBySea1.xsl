<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">

<!--  *********** point <TransportBySea1> start ********** -->
	<xsl:template name="TransportBySea1">
		<xsl:param name="TransportBySea1"/>
		<xsl:param name="TrnsprtBySea_FullName"/>
		<xsl:variable name="TransportBySea1_name" select="name($TransportBySea1)"/>
		<xsl:variable name="TrnsprtBySea_FullName_fox" select="$TrnsprtBySea_FullName"/>
		<xsl:variable name="TrnsprtBySeaDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$TransportBySea1_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="PortOfLoadngDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:PortOfLoadng'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="PortOfDschrgeDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:PortOfDschrge'"/>
			</xsl:call-template>
		</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:element name="INPUT">
					<xsl:attribute name="type">checkbox</xsl:attribute>
					<xsl:attribute name="name"><xsl:value-of select="$TrnsprtBySea_FullName_fox"/>_<xsl:value-of select="$TransportBySea1_name"/></xsl:attribute>
					<xsl:attribute name="onClick">clickcheck(this)</xsl:attribute>
					<xsl:attribute name="tsu">N</xsl:attribute>
				</xsl:element>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<!--<xsl:attribute name="onClick">Swap('<xsl:value-of select="$TransportBySea1_name"/>')</xsl:attribute>-->
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$TrnsprtBySea_FullName_fox"/>_<xsl:value-of select="$TransportBySea1_name"/>')</xsl:attribute>
					<xsl:value-of select="$TrnsprtBySeaDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:text>     </xsl:text>
				<xsl:element name="DIV">
					<!--<xsl:attribute name="id"><xsl:value-of select="$TransportBySea1_name"/></xsl:attribute>-->
					<xsl:attribute name="id"><xsl:value-of select="$TrnsprtBySea_FullName_fox"/>_<xsl:value-of select="$TransportBySea1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right" id="Doc:TrnsprtBySea">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$PortOfLoadngDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name">Doc:PortOfLoadng</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$TransportBySea1_name"/>_PortOfLoadng</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$TransportBySea1/Doc:PortOfLoadng"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$PortOfDschrgeDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name">Doc:PortOfDschrge</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$TransportBySea1_name"/>_PortOfDschrge</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$TransportBySea1/Doc:PortOfDschrge"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <TransportBySea1> end ********** -->
</xsl:stylesheet>
