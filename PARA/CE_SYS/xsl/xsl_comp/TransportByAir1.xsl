<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
   <xsl:include href="AirportName1Choice.xsl"/>
<!--  *********** point <TransportByAir1> start ********** -->
	<xsl:template name="TransportByAir1">
		<xsl:param name="TransportByAir1"/>
		<xsl:param name="TrnsprtByAir_FullName"/>
		<xsl:variable name="TransportByAir1_name" select="name($TransportByAir1)"/>
		<xsl:variable name="TrnsprtByAir_FullName_fox" select="$TrnsprtByAir_FullName"/>
		<xsl:variable name="TrnsprtByAirDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$TransportByAir1_name"/>
			</xsl:call-template>
		</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:element name="INPUT">
					<xsl:attribute name="type">checkbox</xsl:attribute>
					<xsl:attribute name="name"><xsl:value-of select="$TrnsprtByAir_FullName_fox"/>_<xsl:value-of select="$TransportByAir1_name"/></xsl:attribute>
					<xsl:attribute name="onClick">clickcheck(this)</xsl:attribute>
					<xsl:attribute name="tsu">N</xsl:attribute>
				</xsl:element>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$TrnsprtByAir_FullName_fox"/>_<xsl:value-of select="$TransportByAir1_name"/>')</xsl:attribute>
					<xsl:value-of select="$TrnsprtByAirDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:text>     </xsl:text>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$TrnsprtByAir_FullName_fox"/>_<xsl:value-of select="$TransportByAir1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right" id="Doc:TrnsprtByAir">
					<xsl:for-each select="$TransportByAir1/Doc:DprtureAirprt">
						<xsl:variable name="AirportName1Choice" select="."/>
						<xsl:call-template name="AirportName1Choice">
							<xsl:with-param name="AirportName1Choice" select="$AirportName1Choice"/>
							<xsl:with-param name="DprtureAirprt_FullName">
								<xsl:number value="position()" /><xsl:value-of select="$TrnsprtByAir_FullName_fox"/>_<xsl:value-of select="$TransportByAir1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						</xsl:for-each>
						<xsl:for-each select="$TransportByAir1/Doc:DstnAirprt">
						<xsl:variable name="AirportName1Choice_double" select="."/>
						<xsl:call-template name="AirportName1Choice">
							<xsl:with-param name="AirportName1Choice" select="$AirportName1Choice_double"/>
							<xsl:with-param name="DprtureAirprt_FullName">
								<xsl:number value="position()" /><xsl:value-of select="$TrnsprtByAir_FullName_fox"/>_<xsl:value-of select="$TransportByAir1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						</xsl:for-each>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <TransportByAir1> end ********** -->
</xsl:stylesheet>
