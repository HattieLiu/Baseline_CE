<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="TransportDetails2.xsl"/>
	<!--  *********** point <TransportDataSet3> Start ********** -->
	<xsl:template name="TransportDataSet3">
		<xsl:param name="TransportDataSet3"/>
		<xsl:param name="TransportDataSet3_parent"/>
		<xsl:variable name="TransportDataSet3_name" select="name($TransportDataSet3)"/>
		<xsl:variable name="TransportDataSet3_pname" select="$TransportDataSet3_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$TransportDataSet3_name"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$TransportDataSet3_pname"/>_<xsl:value-of select="$TransportDataSet3_name"/>')</xsl:attribute>
					<xsl:value-of select="$fldDesc"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$TransportDataSet3_pname"/>_<xsl:value-of select="$TransportDataSet3_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<td/>
						</tr>
						<xsl:variable name="DocumentIdentification1" select="$TransportDataSet3/DataSetId"/>
						<xsl:call-template name="DocumentIdentification1">
							<xsl:with-param name="DocumentIdentification1" select="$DocumentIdentification1"/>
							<xsl:with-param name="DocumentIdentification1_parent">
								<xsl:value-of select="$TransportDataSet3_pname"/>_<xsl:value-of select="$TransportDataSet3_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PartyIdentification26" select="$TransportDataSet3/Buyr"/>
						<xsl:call-template name="PartyIdentification26">
							<xsl:with-param name="PartyIdentification26" select="$PartyIdentification26"/>
							<xsl:with-param name="PartyIdentification26_parent">
								<xsl:value-of select="$TransportDataSet3_pname"/>_<xsl:value-of select="$TransportDataSet3_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PartyIdentification26_double" select="$TransportDataSet3/Sellr"/>
						<xsl:call-template name="PartyIdentification26">
							<xsl:with-param name="PartyIdentification26" select="$PartyIdentification26_double"/>
							<xsl:with-param name="PartyIdentification26_parent">
								<xsl:value-of select="$TransportDataSet3_pname"/>_<xsl:value-of select="$TransportDataSet3_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PartyIdentification26_three" select="$TransportDataSet3/Consgnr"/>
						<xsl:call-template name="PartyIdentification26">
							<xsl:with-param name="PartyIdentification26" select="$PartyIdentification26_three"/>
							<xsl:with-param name="PartyIdentification26_parent">
								<xsl:value-of select="$TransportDataSet3_pname"/>_<xsl:value-of select="$TransportDataSet3_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PartyIdentification26_four" select="$TransportDataSet3/Consgn"/>
						<xsl:call-template name="PartyIdentification26">
							<xsl:with-param name="PartyIdentification26" select="$PartyIdentification26_four"/>
							<xsl:with-param name="PartyIdentification26_parent">
								<xsl:value-of select="$TransportDataSet3_pname"/>_<xsl:value-of select="$TransportDataSet3_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PartyIdentification26_five" select="$TransportDataSet3/ShipTo"/>
						<xsl:call-template name="PartyIdentification26">
							<xsl:with-param name="PartyIdentification26" select="$PartyIdentification26_five"/>
							<xsl:with-param name="PartyIdentification26_parent">
								<xsl:value-of select="$TransportDataSet3_pname"/>_<xsl:value-of select="$TransportDataSet3_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:for-each select="$TransportDataSet3/TrnsprtInf">
							<xsl:variable name="TransportDetails2" select="."/>
							<xsl:call-template name="TransportDetails2">
								<xsl:with-param name="TransportDetails2" select="$TransportDetails2"/>
								<xsl:with-param name="TransportDetails2_parent">
									<xsl:value-of select="$TransportDataSet3_pname"/>_<xsl:value-of select="$TransportDataSet3_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <TransportDataSet3> end ********** -->
</xsl:stylesheet>
