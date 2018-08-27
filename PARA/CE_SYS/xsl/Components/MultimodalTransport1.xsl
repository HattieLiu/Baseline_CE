<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">

<!--  *********** point <MultimodalTransport1> start ********** -->
	<xsl:template name="MultimodalTransport1">
		<xsl:param name="MultimodalTransport1"/>
		<xsl:param name="MltmdlTrnsprt_FullName"/>
		<xsl:param name="stmt3" select="Doc:MltmdlTrnsprt"/>
		<xsl:variable name="MultimodalTransport1_name" select="name($MultimodalTransport1)"/>
		<xsl:variable name="MltmdlTrnsprt_FullName_fox" select="$MltmdlTrnsprt_FullName"/>
		<xsl:variable name="MltmdlTrnsprtDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$MultimodalTransport1_name"/>
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
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<!--<xsl:attribute name="onClick">Swap('<xsl:value-of select="$MultimodalTransport1_name"/>')</xsl:attribute>-->
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$MltmdlTrnsprt_FullName_fox"/>_<xsl:value-of select="$MultimodalTransport1_name"/>')</xsl:attribute>
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
					<!--<xsl:attribute name="id"><xsl:value-of select="$MultimodalTransport1_name"/></xsl:attribute>-->
					<xsl:attribute name="id"><xsl:value-of select="$MltmdlTrnsprt_FullName_fox"/>_<xsl:value-of select="$MultimodalTransport1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="width">95%</xsl:attribute>
								<xsl:attribute name="align">right</xsl:attribute>
								<xsl:element name="DIV">
									<xsl:attribute name="style">overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
									<table width="85%" border="0" cellpadding="0" cellspacing="0" align="left">
										<tr>
											<xsl:element name="TD">
												<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
												<xsl:attribute name="height">25</xsl:attribute>
												<xsl:value-of select="$PortOfLoadngDesc"/>
											</xsl:element>
											<xsl:element name="TD">
												<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
												<xsl:element name="INPUT">
													<xsl:attribute name="type">text</xsl:attribute>
													<xsl:attribute name="name"><xsl:value-of select="$MultimodalTransport1_name"/>_PortOfLoadng</xsl:attribute>
													<xsl:attribute name="id"><xsl:value-of select="$MultimodalTransport1_name"/>_PortOfLoadng</xsl:attribute>
													<xsl:attribute name="class">CHAR_P</xsl:attribute>
													<xsl:attribute name="length">35</xsl:attribute>
													<xsl:attribute name="maxlength">35</xsl:attribute>
													<xsl:attribute name="value"><xsl:value-of select="$MultimodalTransport1/Doc:PortOfLoadng"/></xsl:attribute>
												</xsl:element>
											</xsl:element>
											<xsl:element name="TD">
												<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
												<xsl:attribute name="height">25</xsl:attribute>
												<xsl:attribute name="nowrap">true</xsl:attribute>
												<xsl:value-of select="$PortOfDschrgeDesc"/>
											</xsl:element>
											<xsl:element name="TD">
												<xsl:element name="INPUT">
													<xsl:attribute name="type">text</xsl:attribute>
													<xsl:attribute name="name"><xsl:value-of select="$MultimodalTransport1_name"/>_PortOfDschrge</xsl:attribute>
													<xsl:attribute name="id"><xsl:value-of select="$MultimodalTransport1_name"/>_PortOfDschrge</xsl:attribute>
													<xsl:attribute name="class">CHAR_P</xsl:attribute>
													<xsl:attribute name="length">35</xsl:attribute>
													<xsl:attribute name="maxlength">35</xsl:attribute>
													<xsl:attribute name="value"><xsl:value-of select="$MultimodalTransport1/Doc:PortOfDschrge"/></xsl:attribute>
												</xsl:element>
											</xsl:element>
										</tr>
										<tr>
											<xsl:element name="TD">
												<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
												<xsl:attribute name="height">25</xsl:attribute>
												<xsl:value-of select="$PlcOfRctDesc"/>
											</xsl:element>
											<xsl:element name="TD">
												<xsl:element name="INPUT">
													<xsl:attribute name="type">text</xsl:attribute>
													<xsl:attribute name="name"><xsl:value-of select="$MultimodalTransport1_name"/>_PlcOfRct</xsl:attribute>
													<xsl:attribute name="id"><xsl:value-of select="$MultimodalTransport1_name"/>_PlcOfRct</xsl:attribute>
													<xsl:attribute name="class">CHAR_P</xsl:attribute>
													<xsl:attribute name="length">35</xsl:attribute>
													<xsl:attribute name="maxlength">35</xsl:attribute>
													<xsl:attribute name="value"><xsl:value-of select="$MultimodalTransport1/Doc:PlcOfRct"/></xsl:attribute>
												</xsl:element>
											</xsl:element>
											<xsl:element name="TD">
												<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
												<xsl:attribute name="height">25</xsl:attribute>
												<xsl:attribute name="nowrap">true</xsl:attribute>
												<xsl:value-of select="$PlcOfDlvryDesc"/>
											</xsl:element>
											<xsl:element name="TD">
												<xsl:element name="INPUT">
													<xsl:attribute name="type">text</xsl:attribute>
													<xsl:attribute name="name"><xsl:value-of select="$MultimodalTransport1_name"/>_PlcOfDlvry</xsl:attribute>
													<xsl:attribute name="id"><xsl:value-of select="$MultimodalTransport1_name"/>_PlcOfDlvry</xsl:attribute>
													<xsl:attribute name="class">CHAR_P</xsl:attribute>
													<xsl:attribute name="length">35</xsl:attribute>
													<xsl:attribute name="maxlength">35</xsl:attribute>
													<xsl:attribute name="value"><xsl:value-of select="$MultimodalTransport1/Doc:PlcOfDlvry"/></xsl:attribute>
												</xsl:element>
											</xsl:element>
										</tr>
										<tr>
											<xsl:element name="TD">
												<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
												<xsl:attribute name="height">25</xsl:attribute>
												<xsl:value-of select="$TakngInChrgDesc"/>
											</xsl:element>
											<xsl:element name="TD">
												<xsl:element name="INPUT">
													<xsl:attribute name="type">text</xsl:attribute>
													<xsl:attribute name="name"><xsl:value-of select="$MultimodalTransport1_name"/>_TakngInChrg</xsl:attribute>
													<xsl:attribute name="id"><xsl:value-of select="$MultimodalTransport1_name"/>_TakngInChrg</xsl:attribute>
													<xsl:attribute name="class">CHAR_P</xsl:attribute>
													<xsl:attribute name="length">35</xsl:attribute>
													<xsl:attribute name="maxlength">35</xsl:attribute>
													<xsl:attribute name="value"><xsl:value-of select="$MultimodalTransport1/Doc:TakngInChrg"/></xsl:attribute>
												</xsl:element>
											</xsl:element>
											<xsl:element name="TD">
												<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
												<xsl:attribute name="height">25</xsl:attribute>
												<xsl:attribute name="nowrap">true</xsl:attribute>
												<xsl:value-of select="$PlcOfFnlDstnDesc"/>
											</xsl:element>
											<xsl:element name="TD">
												<xsl:element name="INPUT">
													<xsl:attribute name="type">text</xsl:attribute>
													<xsl:attribute name="name"><xsl:value-of select="$MultimodalTransport1_name"/>_PlcOfFnlDstn</xsl:attribute>
													<xsl:attribute name="id"><xsl:value-of select="$MultimodalTransport1_name"/>_PlcOfFnlDstn</xsl:attribute>
													<xsl:attribute name="class">CHAR_P</xsl:attribute>
													<xsl:attribute name="length">35</xsl:attribute>
													<xsl:attribute name="maxlength">35</xsl:attribute>
													<xsl:attribute name="value"><xsl:value-of select="$MultimodalTransport1/Doc:PlcOfFnlDstn"/></xsl:attribute>
												</xsl:element>
											</xsl:element>
										</tr>
									</table>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:for-each select="$MultimodalTransport1/Doc:DprtureAirprt">
						<xsl:variable name="AirportName1Choice" select="."/>
						<xsl:call-template name="AirportName1Choice">
							<xsl:with-param name="AirportName1Choice" select="$AirportName1Choice"/>
							<xsl:with-param name="DprtureAirprt_FullName">
								<xsl:value-of select="$MltmdlTrnsprt_FullName_fox"/>_<xsl:value-of select="$MultimodalTransport1_name"/>
							</xsl:with-param>
							<xsl:with-param name="AirportName1Choice_parent">
							     <xsl:number  value="position()"/>_<xsl:value-of select="$stmt3"/>
							</xsl:with-param>
						</xsl:call-template>
						</xsl:for-each>
						<xsl:for-each select="$MultimodalTransport1/Doc:DstnAirprt">
						<xsl:variable name="AirportName1Choice_double" select="."/>
						<xsl:call-template name="AirportName1Choice">
							<xsl:with-param name="AirportName1Choice" select="$AirportName1Choice_double"/>
							<xsl:with-param name="DprtureAirprt_FullName">
								<xsl:value-of select="$MltmdlTrnsprt_FullName_fox"/>_<xsl:value-of select="$MultimodalTransport1_name"/>
							</xsl:with-param>
							<xsl:with-param name="AirportName1Choice_parent">
  							     <xsl:number value="position()"/>_<xsl:value-of select="$stmt3"/>
 							</xsl:with-param>
						</xsl:call-template>
						</xsl:for-each>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <MultimodalTransport1> end ********** -->
</xsl:stylesheet>
