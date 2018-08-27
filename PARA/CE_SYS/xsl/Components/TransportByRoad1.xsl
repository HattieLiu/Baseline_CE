<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">

<!--  *********** point <TransportByRoad1> start ********** -->
	<xsl:template name="TransportByRoad1">
		<xsl:param name="TransportByRoad1"/>
		<xsl:param name="TransportByRoad1_parent"/>
		<xsl:param name="TrnsprtByRoad_FullName"/>
		<xsl:variable name="TransportByRoad1_name" select="name($TransportByRoad1)"/>
		<xsl:variable name="TransportByRoad1_pname" select="$TransportByRoad1_parent"/>
		<xsl:variable name="TrnsprtByRoad_FullName_fox" select="$TrnsprtByRoad_FullName"/>
		<xsl:variable name="TrnsprtByRoadDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$TransportByRoad1_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="PlcOfRctDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:PlcOfRct'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="PlcOfDlvryDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:PlcOfDlvry'"/>
			</xsl:call-template>
		</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<!--<xsl:attribute name="onClick">Swap('<xsl:value-of select="$TransportByRoad1_name"/>')</xsl:attribute>-->
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$TransportByRoad1_pname"/>_<xsl:value-of select="$TrnsprtByRoad_FullName_fox"/>_<xsl:value-of select="$TransportByRoad1_name"/>')</xsl:attribute>
					<xsl:value-of select="$TrnsprtByRoadDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:element name="DIV">
					<!--<xsl:attribute name="id"><xsl:value-of select="$TransportByRoad1_name"/></xsl:attribute>-->
					<xsl:attribute name="id"><xsl:value-of select="$TransportByRoad1_pname"/>_<xsl:value-of select="$TrnsprtByRoad_FullName_fox"/>_<xsl:value-of select="$TransportByRoad1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
						    <xsl:for-each select="$TransportByRoad1/Doc:PlcOfRct">
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$PlcOfRctDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$TransportByRoad1_pname"/>_<xsl:value-of select="$TransportByRoad1_name"/>_PlcOfRct</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$TransportByRoad1_pname"/>_<xsl:value-of select="$TransportByRoad1_name"/>_PlcOfRct</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							</xsl:for-each>
							<xsl:for-each select="$TransportByRoad1/Doc:PlcOfDlvry">
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$PlcOfDlvryDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$TransportByRoad1_pname"/>_<xsl:value-of select="$TransportByRoad1_name"/>_PlcOfDlvry</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$TransportByRoad1_pname"/>_<xsl:value-of select="$TransportByRoad1_name"/>_PlcOfDlvry</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							</xsl:for-each>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <TransportByRoad1> end ********** -->
</xsl:stylesheet>
