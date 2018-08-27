<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="TransportByAir3.xsl"/>
	<xsl:include href="TransportBySea3.xsl"/>
	<xsl:include href="TransportByRoad3.xsl"/>
	<xsl:include href="TransportByRail3.xsl"/>
	<!--  *********** point <SingleTransport4> start ********** -->
	<xsl:template name="SingleTransport4">
		<xsl:param name="SingleTransport4"/>
		<xsl:param name="SingleTransport4_parent"/>
		<xsl:variable name="SingleTransport4_name" select="name($SingleTransport4)"/>
		<xsl:variable name="SingleTransport4_pname" select="$SingleTransport4_parent"/>
		<xsl:variable name="IndvTrnsprtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$SingleTransport4_name"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$SingleTransport4_pname"/>_<xsl:value-of select="$SingleTransport4_name"/>')</xsl:attribute>
					<xsl:value-of select="$IndvTrnsprtDesc"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$SingleTransport4_pname"/>_<xsl:value-of select="$SingleTransport4_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
						<xsl:for-each select="$SingleTransport4/TrnsprtByAir">
							<xsl:variable name="TransportByAir3" select="."/>
							<xsl:call-template name="TransportByAir3">
								<xsl:with-param name="TransportByAir3" select="$TransportByAir3"/>
								<xsl:with-param name="TransportByAir3_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$SingleTransport4_pname"/>_<xsl:value-of select="$SingleTransport4_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:for-each select="$SingleTransport4/TrnsprtBySea">
							<xsl:variable name="TransportBySea3" select="."/>
							<xsl:call-template name="TransportBySea3">
								<xsl:with-param name="TransportBySea3" select="$TransportBySea3"/>
								<xsl:with-param name="TransportBySea3_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$SingleTransport4_pname"/>_<xsl:value-of select="$SingleTransport4_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:for-each select="$SingleTransport4/TrnsprtByRoad">
							<xsl:variable name="TransportByRoad3" select="."/>
							<xsl:call-template name="TransportByRoad3">
								<xsl:with-param name="TransportByRoad3" select="$TransportByRoad3"/>
								<xsl:with-param name="TransportByRoad3_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$SingleTransport4_pname"/>_<xsl:value-of select="$SingleTransport4_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:for-each select="$SingleTransport4/TrnsprtByRail">
							<xsl:variable name="TransportByRail3" select="."/>
							<xsl:call-template name="TransportByRail3">
								<xsl:with-param name="TransportByRail3" select="$TransportByRail3"/>
								<xsl:with-param name="TransportByRail3_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$SingleTransport4_pname"/>_<xsl:value-of select="$SingleTransport4_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <SingleTransport4> end ********** -->
</xsl:stylesheet>
