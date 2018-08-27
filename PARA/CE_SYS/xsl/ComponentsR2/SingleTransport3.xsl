<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!--  *********** point <SingleTransport3> start ********** -->
	<xsl:template name="SingleTransport3">
		<xsl:param name="SingleTransport3"/>
		<xsl:param name="SingleTransport3_parent"/>
		<xsl:variable name="SingleTransport3_name" select="name($SingleTransport3)"/>
		<xsl:variable name="SingleTransport3_pname" select="$SingleTransport3_parent"/>
		<xsl:variable name="IndvTrnsprtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$SingleTransport3_name"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$SingleTransport3_pname"/>_<xsl:value-of select="$SingleTransport3_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$SingleTransport3_pname"/>_<xsl:value-of select="$SingleTransport3_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
						<xsl:variable name="TransportByAir2" select="$SingleTransport3/TrnsprtByAir"/>
						<xsl:call-template name="TransportByAir2">
							<xsl:with-param name="TransportByAir2" select="$TransportByAir2"/>
							<xsl:with-param name="TransportByAir2_parent">
								<xsl:value-of select="$SingleTransport3_pname"/>_<xsl:value-of select="$SingleTransport3_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="TransportBySea4" select="$SingleTransport3/TrnsprtBySea"/>
						<xsl:call-template name="TransportBySea4">
							<xsl:with-param name="TransportBySea4" select="$TransportBySea4"/>
							<xsl:with-param name="TransportBySea4_parent">
								<xsl:value-of select="$SingleTransport3_pname"/>_<xsl:value-of select="$SingleTransport3_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="TransportByRoad2" select="$SingleTransport3/TrnsprtByRoad"/>
						<xsl:call-template name="TransportByRoad2">
							<xsl:with-param name="TransportByRoad2" select="$TransportByRoad2"/>
							<xsl:with-param name="TransportByRoad2_parent">
								<xsl:value-of select="$SingleTransport3_pname"/>_<xsl:value-of select="$SingleTransport3_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="TransportByRail2" select="$SingleTransport3/TrnsprtByRail"/>
						<xsl:call-template name="TransportByRail2">
							<xsl:with-param name="TransportByRail2" select="$TransportByRail2"/>
							<xsl:with-param name="TransportByRail2_parent">
								<xsl:value-of select="$SingleTransport3_pname"/>_<xsl:value-of select="$SingleTransport3_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <SingleTransport3> end ********** -->
</xsl:stylesheet>
