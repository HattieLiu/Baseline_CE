<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">

<!--  *********** point <MultimodalTransport2> Start ********** -->
	<xsl:template name="MultimodalTransport2">
		<xsl:param name="MultimodalTransport2"/>
		<xsl:param name="MultimodalTransport2_parent"/>
		<xsl:param name="stmt2" select="Doc:MltmdlTrnsprt"/>
		<xsl:variable name="MultimodalTransport2_name" select="name($MultimodalTransport2)"/>
		<xsl:variable name="MultimodalTransport2_pname" select="$MultimodalTransport2_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$MultimodalTransport2_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="AirCrrierNmDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'AirCrrierNm'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="PortOfLoadngDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'PortOfLoadng'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="PortOfDschrgeDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'PortOfDschrge'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="VsslNmDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'VsslNm'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="PlcOfRctDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'PlcOfRct'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="PlcOfDlvryDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'PlcOfDlvry'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="TakngInChrgDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'TakngInChrg'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="PlcOfFnlDstnDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'PlcOfFnlDstn'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="TrnstLctnDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'TrnstLctn'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="RoadCrrierNmDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'RoadCrrierNm'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="RailCrrierNmDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'RailCrrierNm'"/>
			</xsl:call-template>
		</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<xsl:element name="input">
					<xsl:attribute name="type">radio</xsl:attribute>
					<xsl:attribute name="id"><xsl:value-of select="substring($MultimodalTransport2_name,5)"/>_check</xsl:attribute>
					<xsl:attribute name="name"><xsl:value-of select="substring($MultimodalTransport2_name,5)"/>_check</xsl:attribute>
					<xsl:for-each select="$MultimodalTransport2">
						<xsl:if test="Doc:PortOfDschrge != '' ">
							<xsl:attribute name="checked">true</xsl:attribute>
						</xsl:if>
					</xsl:for-each>
				</xsl:element>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:for-each select="$MultimodalTransport2">
						<xsl:if test="Doc:PortOfDschrge != '' ">
							<xsl:attribute name="onClick">Swap('<xsl:value-of select="$MultimodalTransport2_pname"/>_<xsl:value-of select="$MultimodalTransport2_name"/>')</xsl:attribute>
						</xsl:if>
					</xsl:for-each>
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
					<xsl:attribute name="id"><xsl:value-of select="$MultimodalTransport2_pname"/>_<xsl:value-of select="$MultimodalTransport2_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<td/>
						</tr>
						
						<tr>
						    <xsl:for-each select="$MultimodalTransport2/Doc:AirCrrierNm">
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$AirCrrierNmDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$MultimodalTransport2_pname"/>_<xsl:value-of select="$MultimodalTransport2_name"/>_AirCrrierNm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$MultimodalTransport2_pname"/>_<xsl:value-of select="$MultimodalTransport2_name"/>_AirCrrierNm</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							</xsl:for-each>
							<xsl:for-each select="$MultimodalTransport2/Doc:PortOfLoadng">
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$PortOfLoadngDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$MultimodalTransport2_pname"/>_<xsl:value-of select="$MultimodalTransport2_name"/>_PortOfLoadng</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$MultimodalTransport2_pname"/>_<xsl:value-of select="$MultimodalTransport2_name"/>_PortOfLoadng</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							</xsl:for-each>
						</tr>
						<tr>
						    <xsl:for-each select="$MultimodalTransport2/Doc:PortOfDschrge">
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$PortOfDschrgeDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$MultimodalTransport2_pname"/>_<xsl:value-of select="$MultimodalTransport2_name"/>_PortOfDschrge</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$MultimodalTransport2_pname"/>_<xsl:value-of select="$MultimodalTransport2_name"/>_PortOfDschrge</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							</xsl:for-each>
							<xsl:for-each select="$MultimodalTransport2/Doc:VsslNm">
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$VsslNmDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$MultimodalTransport2_pname"/>_<xsl:value-of select="$MultimodalTransport2_name"/>_VsslNm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$MultimodalTransport2_pname"/>_<xsl:value-of select="$MultimodalTransport2_name"/>_VsslNm</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							</xsl:for-each>
						</tr>
						<tr>
						    <xsl:for-each select="$MultimodalTransport2/Doc:PlcOfRct">
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$PlcOfRctDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$MultimodalTransport2_pname"/>_<xsl:value-of select="$MultimodalTransport2_name"/>_PlcOfRct</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$MultimodalTransport2_pname"/>_<xsl:value-of select="$MultimodalTransport2_name"/>_PlcOfRct</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							</xsl:for-each>
							<xsl:for-each select="$MultimodalTransport2/Doc:PlcOfDlvry">
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$PlcOfDlvryDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$MultimodalTransport2_pname"/>_<xsl:value-of select="$MultimodalTransport2_name"/>_PlcOfDlvry</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$MultimodalTransport2_pname"/>_<xsl:value-of select="$MultimodalTransport2_name"/>_PlcOfDlvry</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							</xsl:for-each>
						</tr>
						<tr>
						    <xsl:for-each select="$MultimodalTransport2/Doc:TakngInChrg">
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$PlcOfDlvryDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$MultimodalTransport2_pname"/>_<xsl:value-of select="$MultimodalTransport2_name"/>_TakngInChrg</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$MultimodalTransport2_pname"/>_<xsl:value-of select="$MultimodalTransport2_name"/>_TakngInChrg</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							</xsl:for-each>
							<xsl:for-each select="$MultimodalTransport2/Doc:PlcOfFnlDstn">
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$TakngInChrgDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$MultimodalTransport2_pname"/>_<xsl:value-of select="$MultimodalTransport2_name"/>_PlcOfFnlDstn</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$MultimodalTransport2_pname"/>_<xsl:value-of select="$MultimodalTransport2_name"/>_PlcOfFnlDstn</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							</xsl:for-each>
						</tr>
						<tr>
						    <xsl:for-each select="$MultimodalTransport2/Doc:TrnstLctn">
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$TrnstLctnDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$MultimodalTransport2_pname"/>_<xsl:value-of select="$MultimodalTransport2_name"/>_TrnstLctn</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$MultimodalTransport2_pname"/>_<xsl:value-of select="$MultimodalTransport2_name"/>_TrnstLctn</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							</xsl:for-each>
							<xsl:for-each select="$MultimodalTransport2/Doc:RoadCrrierNm">
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$RoadCrrierNmDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$MultimodalTransport2_pname"/>_<xsl:value-of select="$MultimodalTransport2_name"/>_RoadCrrierNm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$MultimodalTransport2_pname"/>_<xsl:value-of select="$MultimodalTransport2_name"/>_RoadCrrierNm</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							</xsl:for-each>
							<xsl:for-each select="$MultimodalTransport2/Doc:RailCrrierNm">
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$RailCrrierNmDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$MultimodalTransport2_pname"/>_<xsl:value-of select="$MultimodalTransport2_name"/>_RailCrrierNm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$MultimodalTransport2_pname"/>_<xsl:value-of select="$MultimodalTransport2_name"/>_RailCrrierNm</xsl:attribute>
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
	<!--  *********** point <MultimodalTransport2> end ********** -->
</xsl:stylesheet>
