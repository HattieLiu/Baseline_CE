<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="SingleTransport4.xsl"/>
	<xsl:include href="MultimodalTransport3.xsl"/>
	<!--  *********** point <TransportMeans1> start ********** -->
	<xsl:template name="TransportMeans1">
		<xsl:param name="TransportMeans1"/>
		<xsl:param name="TransportMeans1_parent"/>
		<xsl:variable name="TransportMeans1_name" select="name($TransportMeans1)"/>
		<xsl:variable name="TransportMeans1_pname" select="$TransportMeans1_parent"/>
		<xsl:variable name="RtgSummryDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$TransportMeans1_name"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$TransportMeans1_pname"/>_<xsl:value-of select="$TransportMeans1_name"/>')</xsl:attribute>
					<xsl:value-of select="$RtgSummryDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$TransportMeans1_pname"/>_<xsl:value-of select="$TransportMeans1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
						<xsl:variable name="SingleTransport4" select="$TransportMeans1/IndvTrnsprt"/>
						<xsl:call-template name="SingleTransport4">
							<xsl:with-param name="SingleTransport4" select="$SingleTransport4"/>
							<xsl:with-param name="SingleTransport4_parent">
								<xsl:value-of select="$TransportMeans1_pname"/>_<xsl:value-of select="$TransportMeans1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="MultimodalTransport3" select="$TransportMeans1/MltmdlTrnsprt"/>
						<xsl:call-template name="MultimodalTransport3">
							<xsl:with-param name="MultimodalTransport3" select="$MultimodalTransport3"/>
							<xsl:with-param name="MultimodalTransport3_parent">
								<xsl:value-of select="$TransportMeans1_pname"/>_<xsl:value-of select="$TransportMeans1_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <TransportMeans1> end ********** -->
</xsl:stylesheet>
