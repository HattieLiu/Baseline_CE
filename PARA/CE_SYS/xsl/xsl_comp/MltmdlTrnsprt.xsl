<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
	<xsl:template name="MltmdlTrnsprt">
		<xsl:param name="MltmdlTrnsprt"/>
		<xsl:param name="MltmdlTrnsprt_parentName"/>
		<xsl:variable name="MltmdlTrnsprt_name" select="name($MltmdlTrnsprt)"/>
		<xsl:variable name="MltmdlTrnsprt_pName" select="name($MltmdlTrnsprt_parentName)"/>
		<xsl:variable name="MltmdlTrnsprtDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$MltmdlTrnsprt_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="AirCrrierNmDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:AirCrrierNm'"/>
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
		<xsl:variable name="VsslNmDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:VsslNm'"/>
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
		<xsl:variable name="TakngInChrgDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:TakngInChrg'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="PlcOfFnlDstnDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:PlcOfFnlDstn'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="TrnstLctnDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:TrnstLctn'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="RoadCrrierNmDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:RoadCrrierNm'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="RailCrrierNmDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:RailCrrierNm'"/>
			</xsl:call-template>
		</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:element name="input">
					<xsl:attribute name="type">radio</xsl:attribute>
					<xsl:attribute name="name"><xsl:value-of select="$MltmdlTrnsprt_pName"/>_check</xsl:attribute>
					<xsl:attribute name="tx"><xsl:value-of select="$MltmdlTrnsprt_pName"/>_Doc:MltmdlTrnsprt</xsl:attribute>
					<xsl:attribute name="txs"><xsl:value-of select="$MltmdlTrnsprt_pName"/>_Doc:IndvTrnsprt</xsl:attribute>
					<xsl:attribute name="onClick">radioCheck_layer()</xsl:attribute>
				</xsl:element>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$MltmdlTrnsprt_pName"/>_<xsl:value-of select="$MltmdlTrnsprt_name"/>')</xsl:attribute>
					<xsl:value-of select="$MltmdlTrnsprtDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:text>     </xsl:text>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$MltmdlTrnsprt_pName"/>_<xsl:value-of select="$MltmdlTrnsprt_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right" id="Doc:MltmdlTrnsprt">
						<xsl:for-each select="$MltmdlTrnsprt/Doc:AirCrrierNm">
							<tr>
								<xsl:element name="TD">
									<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
									<xsl:attribute name="height">25</xsl:attribute>
									<xsl:value-of select="$AirCrrierNmDesc"/>
									<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
									<xsl:element name="INPUT">
										<xsl:attribute name="type">text</xsl:attribute>
										<xsl:attribute name="name">Doc:AirCrrierNm</xsl:attribute>
										<xsl:attribute name="id"><xsl:value-of select="$AirCrrierNmDesc"/></xsl:attribute>
										<xsl:attribute name="class">CHAR_M</xsl:attribute>
										<xsl:attribute name="length">35</xsl:attribute>
										<xsl:attribute name="maxlength">35</xsl:attribute>
										<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
										<xsl:attribute name="multi">Y</xsl:attribute>
										<xsl:attribute name="tbi">Doc:MltmdlTrnsprt</xsl:attribute>
									</xsl:element>
								</xsl:element>
							</tr>
						</xsl:for-each>
						<xsl:for-each select="$MltmdlTrnsprt/Doc:PortOfLoadng">
							<tr>
								<xsl:element name="TD">
									<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
									<xsl:attribute name="height">25</xsl:attribute>
									<xsl:value-of select="$PortOfLoadngDesc"/>
									<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
									<xsl:element name="INPUT">
										<xsl:attribute name="type">text</xsl:attribute>
										<xsl:attribute name="name">Doc:PortOfLoadng</xsl:attribute>
										<xsl:attribute name="id"><xsl:value-of select="$PortOfLoadngDesc"/></xsl:attribute>
										<xsl:attribute name="class">CHAR_M</xsl:attribute>
										<xsl:attribute name="length">35</xsl:attribute>
										<xsl:attribute name="maxlength">35</xsl:attribute>
										<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
										<xsl:attribute name="multi">Y</xsl:attribute>
										<xsl:attribute name="tbi">Doc:MltmdlTrnsprt</xsl:attribute>
									</xsl:element>
								</xsl:element>
							</tr>
						</xsl:for-each>
						<xsl:for-each select="$MltmdlTrnsprt/Doc:PortOfDschrge">
							<tr>
								<xsl:element name="TD">
									<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
									<xsl:attribute name="height">25</xsl:attribute>
									<xsl:value-of select="$PortOfDschrgeDesc"/>
									<xsl:element name="INPUT">
										<xsl:attribute name="type">text</xsl:attribute>
										<xsl:attribute name="name">Doc:PortOfDschrge</xsl:attribute>
										<xsl:attribute name="id"><xsl:value-of select="$PortOfDschrgeDesc"/></xsl:attribute>
										<xsl:attribute name="class">CHAR_M</xsl:attribute>
										<xsl:attribute name="length">35</xsl:attribute>
										<xsl:attribute name="maxlength">35</xsl:attribute>
										<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
										<xsl:attribute name="multi">Y</xsl:attribute>
										<xsl:attribute name="tbi">Doc:MltmdlTrnsprt</xsl:attribute>
									</xsl:element>
								</xsl:element>
							</tr>
						</xsl:for-each>
						<xsl:for-each select="$MltmdlTrnsprt/Doc:VsslNm">
							<tr>
								<xsl:element name="TD">
									<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
									<xsl:attribute name="height">25</xsl:attribute>
									<xsl:value-of select="$VsslNmDesc"/>
									<xsl:element name="INPUT">
										<xsl:attribute name="type">text</xsl:attribute>
										<xsl:attribute name="name">Doc:VsslNm</xsl:attribute>
										<xsl:attribute name="id"><xsl:value-of select="$VsslNmDesc"/></xsl:attribute>
										<xsl:attribute name="class">CHAR_M</xsl:attribute>
										<xsl:attribute name="length">35</xsl:attribute>
										<xsl:attribute name="maxlength">35</xsl:attribute>
										<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
										<xsl:attribute name="multi">Y</xsl:attribute>
										<xsl:attribute name="tbi">Doc:MltmdlTrnsprt</xsl:attribute>
									</xsl:element>
								</xsl:element>
							</tr>
						</xsl:for-each>
						<xsl:for-each select="$MltmdlTrnsprt/Doc:PlcOfRct">
							<tr>
								<xsl:element name="TD">
									<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
									<xsl:attribute name="height">25</xsl:attribute>
									<xsl:value-of select="$PlcOfRctDesc"/>
									<xsl:element name="INPUT">
										<xsl:attribute name="type">text</xsl:attribute>
										<xsl:attribute name="name">Doc:PlcOfRct</xsl:attribute>
										<xsl:attribute name="id"><xsl:value-of select="$PlcOfRctDesc"/></xsl:attribute>
										<xsl:attribute name="class">CHAR_M</xsl:attribute>
										<xsl:attribute name="length">35</xsl:attribute>
										<xsl:attribute name="maxlength">35</xsl:attribute>
										<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
										<xsl:attribute name="multi">Y</xsl:attribute>
										<xsl:attribute name="tbi">Doc:MltmdlTrnsprt</xsl:attribute>
									</xsl:element>
								</xsl:element>
							</tr>
						</xsl:for-each>
						<xsl:for-each select="$MltmdlTrnsprt/Doc:PlcOfDlvry">
							<tr>
								<xsl:element name="TD">
									<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
									<xsl:attribute name="height">25</xsl:attribute>
									<xsl:value-of select="$PlcOfDlvryDesc"/>
									<xsl:element name="INPUT">
										<xsl:attribute name="type">text</xsl:attribute>
										<xsl:attribute name="name">Doc:PlcOfDlvry</xsl:attribute>
										<xsl:attribute name="id"><xsl:value-of select="$PlcOfDlvryDesc"/></xsl:attribute>
										<xsl:attribute name="class">CHAR_M</xsl:attribute>
										<xsl:attribute name="length">35</xsl:attribute>
										<xsl:attribute name="maxlength">35</xsl:attribute>
										<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
										<xsl:attribute name="multi">Y</xsl:attribute>
										<xsl:attribute name="tbi">Doc:MltmdlTrnsprt</xsl:attribute>
									</xsl:element>
								</xsl:element>
							</tr>
						</xsl:for-each>
						<xsl:for-each select="$MltmdlTrnsprt/Doc:TakngInChrg">
							<tr>
								<xsl:element name="TD">
									<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
									<xsl:attribute name="height">25</xsl:attribute>
									<xsl:value-of select="$TakngInChrgDesc"/>
									<xsl:element name="INPUT">
										<xsl:attribute name="type">text</xsl:attribute>
										<xsl:attribute name="name">Doc:TakngInChrg</xsl:attribute>
										<xsl:attribute name="id"><xsl:value-of select="$TakngInChrgDesc"/></xsl:attribute>
										<xsl:attribute name="class">CHAR_M</xsl:attribute>
										<xsl:attribute name="length">35</xsl:attribute>
										<xsl:attribute name="maxlength">35</xsl:attribute>
										<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
										<xsl:attribute name="multi">Y</xsl:attribute>
										<xsl:attribute name="tbi">Doc:MltmdlTrnsprt</xsl:attribute>
									</xsl:element>
								</xsl:element>
							</tr>
						</xsl:for-each>
						<xsl:for-each select="$MltmdlTrnsprt/Doc:PlcOfFnlDstn">
							<tr>
								<xsl:element name="TD">
									<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
									<xsl:attribute name="height">25</xsl:attribute>
									<xsl:value-of select="$PlcOfFnlDstnDesc"/>
									<xsl:element name="INPUT">
										<xsl:attribute name="type">text</xsl:attribute>
										<xsl:attribute name="name">Doc:PlcOfFnlDstn</xsl:attribute>
										<xsl:attribute name="id"><xsl:value-of select="$PlcOfFnlDstnDesc"/></xsl:attribute>
										<xsl:attribute name="class">CHAR_M</xsl:attribute>
										<xsl:attribute name="length">35</xsl:attribute>
										<xsl:attribute name="maxlength">35</xsl:attribute>
										<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
										<xsl:attribute name="multi">Y</xsl:attribute>
										<xsl:attribute name="tbi">Doc:MltmdlTrnsprt</xsl:attribute>
									</xsl:element>
								</xsl:element>
							</tr>
						</xsl:for-each>
						<xsl:for-each select="$MltmdlTrnsprt/Doc:TrnstLctn">
							<tr>
								<xsl:element name="TD">
									<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
									<xsl:attribute name="height">25</xsl:attribute>
									<xsl:value-of select="$TrnstLctnDesc"/>
									<xsl:element name="INPUT">
										<xsl:attribute name="type">text</xsl:attribute>
										<xsl:attribute name="name">Doc:TrnstLctnDstn</xsl:attribute>
										<xsl:attribute name="id"><xsl:value-of select="$TrnstLctnDesc"/></xsl:attribute>
										<xsl:attribute name="class">CHAR_M</xsl:attribute>
										<xsl:attribute name="length">35</xsl:attribute>
										<xsl:attribute name="maxlength">35</xsl:attribute>
										<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
										<xsl:attribute name="multi">Y</xsl:attribute>
										<xsl:attribute name="tbi">Doc:MltmdlTrnsprt</xsl:attribute>
									</xsl:element>
								</xsl:element>
							</tr>
						</xsl:for-each><xsl:for-each select="$MltmdlTrnsprt/Doc:RoadCrrierNm">
							<tr>
								<xsl:element name="TD">
									<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
									<xsl:attribute name="height">25</xsl:attribute>
									<xsl:value-of select="$RoadCrrierNmDesc"/>
									<xsl:element name="INPUT">
										<xsl:attribute name="type">text</xsl:attribute>
										<xsl:attribute name="name">Doc:RoadCrrierNmDstn</xsl:attribute>
										<xsl:attribute name="id"><xsl:value-of select="$RoadCrrierNmDesc"/></xsl:attribute>
										<xsl:attribute name="class">CHAR_M</xsl:attribute>
										<xsl:attribute name="length">35</xsl:attribute>
										<xsl:attribute name="maxlength">35</xsl:attribute>
										<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
										<xsl:attribute name="multi">Y</xsl:attribute>
										<xsl:attribute name="tbi">Doc:MltmdlTrnsprt</xsl:attribute>
									</xsl:element>
								</xsl:element>
							</tr>
						</xsl:for-each>
						<xsl:for-each select="$MltmdlTrnsprt/Doc:RailCrrierNm">
							<tr>
								<xsl:element name="TD">
									<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
									<xsl:attribute name="height">25</xsl:attribute>
									<xsl:value-of select="$RailCrrierNmDesc"/>
									<xsl:element name="INPUT">
										<xsl:attribute name="type">text</xsl:attribute>
										<xsl:attribute name="name">Doc:RailCrrierNm</xsl:attribute>
										<xsl:attribute name="id"><xsl:value-of select="$RailCrrierNmDesc"/></xsl:attribute>
										<xsl:attribute name="class">CHAR_M</xsl:attribute>
										<xsl:attribute name="length">35</xsl:attribute>
										<xsl:attribute name="maxlength">35</xsl:attribute>
										<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
										<xsl:attribute name="multi">Y</xsl:attribute>
										<xsl:attribute name="tbi">Doc:MltmdlTrnsprt</xsl:attribute>
									</xsl:element>
								</xsl:element>
							</tr>
						</xsl:for-each>
						<xsl:for-each select="$MltmdlTrnsprt/Doc:DprtureAirprt">
							<xsl:variable name="DprtureAirprt" select="."/>
							<xsl:call-template name="DprtureAirprt">
								<xsl:with-param name="DprtureAirprt" select="$DprtureAirprt"/>
								<xsl:with-param name="DprtureAirprt_parentName">
									<xsl:number value="position()"/>
									<xsl:value-of select="$MltmdlTrnsprt_pName"/>_<xsl:value-of select="$MltmdlTrnsprt_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:for-each select="$MltmdlTrnsprt/Doc:DstnAirprt">
							<xsl:variable name="DstnAirprt" select="."/>
							<xsl:call-template name="DstnAirprt">
								<xsl:with-param name="DstnAirprt" select="$DstnAirprt"/>
								<xsl:with-param name="DstnAirprt_parentName">
									<xsl:number value="position()"/>
									<xsl:value-of select="$MltmdlTrnsprt_pName"/>_<xsl:value-of select="$MltmdlTrnsprt_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
