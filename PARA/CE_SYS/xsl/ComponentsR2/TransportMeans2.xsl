<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:include href="SingleTransport5.xsl"/>
   <xsl:include href="MultimodalTransport3.xsl"/>
<!--  *********** point <TransportMeans2> start ********** -->
	<xsl:template name="TransportMeans2">
		<xsl:param name="TransportMeans2"/>
		<xsl:param name="TransportMeans2_parent"/>
		<xsl:variable name="TransportMeans2_name" select="name($TransportMeans2)"/>
		<xsl:variable name="TransportMeans2_pname" select="$TransportMeans2_parent"/>
		<xsl:variable name="RtgSummryDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$TransportMeans2_name"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$TransportMeans2_pname"/>_<xsl:value-of select="$TransportMeans2_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$TransportMeans2_pname"/>_<xsl:value-of select="$TransportMeans2_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
						<xsl:variable name="SingleTransport5" select="$TransportMeans2/IndvTrnsprt"/>
						<xsl:call-template name="SingleTransport5">
							<xsl:with-param name="SingleTransport5" select="$SingleTransport5"/>
							<xsl:with-param name="SingleTransport5_parent">
								<xsl:value-of select="$TransportMeans2_pname"/>_<xsl:value-of select="$TransportMeans2_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="MultimodalTransport3" select="$TransportMeans2/MltmdlTrnsprt"/>
						<xsl:call-template name="MultimodalTransport3">
							<xsl:with-param name="MultimodalTransport3" select="$MultimodalTransport3"/>
							<xsl:with-param name="MultimodalTransport3_parent">
								<xsl:value-of select="$TransportMeans2_pname"/>_<xsl:value-of select="$TransportMeans2_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <TransportMeans2> end ********** -->
</xsl:stylesheet>
