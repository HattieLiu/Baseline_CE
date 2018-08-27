<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="AirportName1Choice.xsl"/>
	<!--  *********** point <TransportByAir3> start ********** -->
	<xsl:template name="TransportByAir3">
		<xsl:param name="TransportByAir3"/>
		<xsl:param name="TransportByAir3_parent"/>
		<xsl:param name="stmt3" select="DprtureAirprt"/>
		<xsl:variable name="TransportByAir3_name" select="name($TransportByAir3)"/>
		<xsl:variable name="TransportByAir3_pname" select="$TransportByAir3_parent"/>
		<xsl:variable name="TrnsprtByAirDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$TransportByAir3_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="AirCrrierNmDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'AirCrrierNm'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$TransportByAir3_pname"/>_<xsl:value-of select="$TransportByAir3_name"/>')</xsl:attribute>
					<xsl:value-of select="$TrnsprtByAirDesc"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$TransportByAir3_pname"/>_<xsl:value-of select="$TransportByAir3_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:attribute name="style">width:20%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$AirCrrierNmDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$TransportByAir3_pname"/>_<xsl:value-of select="$TransportByAir3_name"/>_AirCrrierNm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$TransportByAir3_pname"/>_<xsl:value-of select="$TransportByAir3_name"/>_AirCrrierNm</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$TransportByAir3/AirCrrierNm"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:for-each select="$TransportByAir3/DprtureAirprt">
							<xsl:variable name="AirportName1Choice" select="."/>
							<xsl:call-template name="AirportName1Choice">
								<xsl:with-param name="AirportName1Choice" select="$AirportName1Choice"/>
								<xsl:with-param name="AirportName1Choice_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$TransportByAir3_pname"/>_<xsl:value-of select="$TransportByAir3_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:for-each select="$TransportByAir3/DstnAirprt">
							<xsl:variable name="AirportName1Choice_double" select="."/>
							<xsl:call-template name="AirportName1Choice">
								<xsl:with-param name="AirportName1Choice" select="$AirportName1Choice_double"/>
								<xsl:with-param name="AirportName1Choice_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$TransportByAir3_pname"/>_<xsl:value-of select="$TransportByAir3_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <TransportByAir3> end ********** -->
</xsl:stylesheet>
