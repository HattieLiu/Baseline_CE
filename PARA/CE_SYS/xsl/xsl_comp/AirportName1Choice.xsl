<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu" xmlns:fn="http://www.mycompany.com/mynamespace">
	<!--  *********** point <AirportName1Choice> Start ********** -->
	<xsl:template name="AirportName1Choice">
		<xsl:param name="AirportName1Choice"/>
		<xsl:param name="DprtureAirprt_FullName"/>
		<xsl:param name="numberPos"/>
		<xsl:variable name="AirportName1Choice_name" select="name($AirportName1Choice)"/>
		<xsl:variable name="AirportName1_FullName_fox" select="$DprtureAirprt_FullName"/>
		<xsl:variable name="number_Pos" select="$numberPos"/>
		<xsl:variable name="DprtureAirprtDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$AirportName1Choice_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="AirprtCdDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:AirprtCd'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="OthrAirprtDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:OthrAirprtDesc'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="TwnDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:Twn'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="AirprtNmDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:AirprtNm'"/>
			</xsl:call-template>
		</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:element name="INPUT">
					<xsl:attribute name="type">checkbox</xsl:attribute>
					<xsl:attribute name="name"><xsl:value-of select="$AirportName1_FullName_fox"/>_<xsl:value-of select="$AirportName1Choice_name"/></xsl:attribute>
					<xsl:attribute name="onClick">clickcheck(this)</xsl:attribute>
					<xsl:attribute name="tsu">N</xsl:attribute>
				</xsl:element>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$AirportName1_FullName_fox"/>_<xsl:value-of select="$AirportName1Choice_name"/>')</xsl:attribute>
					<xsl:value-of select="$DprtureAirprtDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:text>     </xsl:text>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$AirportName1_FullName_fox"/>_<xsl:value-of select="$AirportName1Choice_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$AirportName1_FullName_fox"/>_<xsl:value-of select="$AirportName1Choice_name"/>_check</xsl:attribute>
									<xsl:attribute name="tx"><xsl:value-of select="$AirportName1_FullName_fox"/>_<xsl:value-of select="$AirportName1Choice_name"/>_<xsl:value-of select="$OthrAirprtDesc"/></xsl:attribute>
									<xsl:attribute name="onClick">radioCheck_input()</xsl:attribute>
									<xsl:if test="$AirportName1Choice/Doc:AirprtCd != ''">
										<xsl:attribute name="checked">true</xsl:attribute>
									</xsl:if>
								</xsl:element>
								<xsl:value-of select="$AirprtCdDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$AirportName1Choice_name"/>_AirprtCd</xsl:attribute>
									<xsl:attribute name="name">Doc:AirprtCd</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$AirportName1Choice/Doc:AirprtCd"/></xsl:attribute>
									<xsl:attribute name="ch"><xsl:value-of select="$AirportName1_FullName_fox"/>_<xsl:value-of select="$AirportName1Choice_name"/></xsl:attribute>
									<xsl:attribute name="multi">N</xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$AirportName1_FullName_fox"/>_<xsl:value-of select="$AirportName1Choice_name"/>_check</xsl:attribute>
									<xsl:attribute name="tx"><xsl:value-of select="$AirportName1_FullName_fox"/>_<xsl:value-of select="$AirportName1Choice_name"/></xsl:attribute>
									<xsl:attribute name="onClick">radioCheck_input()</xsl:attribute>
									<xsl:if test="$AirportName1Choice/Doc:OthrAirprtDesc/Doc:Twn != ''">
									<xsl:attribute name="checked">true</xsl:attribute>
								</xsl:if>
								</xsl:element>
								<a>
									<xsl:attribute name="class">Heading3</xsl:attribute>
									<xsl:attribute name="style">cursor:hand</xsl:attribute>
									<xsl:attribute name="onClick">Swap('<xsl:value-of select="$AirportName1_FullName_fox"/>_<xsl:value-of select="$AirportName1Choice_name"/>_<xsl:value-of select="$OthrAirprtDesc"/>')</xsl:attribute>
									<xsl:value-of select="$OthrAirprtDesc"/>
								</a>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:element name="DIV">
									<xsl:attribute name="id"><xsl:value-of select="$AirportName1_FullName_fox"/>_<xsl:value-of select="$AirportName1Choice_name"/>_<xsl:value-of select="$OthrAirprtDesc"/></xsl:attribute>
									<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
									<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
										<tr>
											<xsl:element name="TD">
												<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
												<xsl:attribute name="height">25</xsl:attribute>
												<xsl:value-of select="$TwnDesc"/>
												<xsl:element name="INPUT">
													<xsl:attribute name="type">text</xsl:attribute>
													<xsl:attribute name="name">Doc:Twn</xsl:attribute>
													<xsl:attribute name="id"><xsl:value-of select="$AirportName1Choice_name"/>_OthrAirprtDesc_Twn</xsl:attribute>
													<xsl:attribute name="class">CHAR_M</xsl:attribute>
													<xsl:attribute name="length">35</xsl:attribute>
													<xsl:attribute name="maxlength">35</xsl:attribute>
													<xsl:attribute name="value"><xsl:value-of select="$AirportName1Choice/Doc:OthrAirprtDesc/Doc:Twn"/></xsl:attribute>
													<xsl:attribute name="ch"><xsl:value-of select="$AirportName1_FullName_fox"/>_<xsl:value-of select="$AirportName1Choice_name"/>_<xsl:value-of select="$OthrAirprtDesc"/></xsl:attribute>
													<xsl:attribute name="multi">N</xsl:attribute>
												</xsl:element>
											</xsl:element>
											<xsl:element name="TD">
												<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
												<xsl:attribute name="height">25</xsl:attribute>
												<xsl:value-of select="$AirprtNmDesc"/>
												<xsl:element name="INPUT">
													<xsl:attribute name="type">text</xsl:attribute>
													<xsl:attribute name="name">Doc:AirprtNm</xsl:attribute>
													<xsl:attribute name="id"><xsl:value-of select="$AirportName1Choice_name"/>_OthrAirprtDesc_AirprtNm</xsl:attribute>
													<xsl:attribute name="class">CHAR_M</xsl:attribute>
													<xsl:attribute name="length">35</xsl:attribute>
													<xsl:attribute name="maxlength">35</xsl:attribute>
													<xsl:attribute name="value"><xsl:value-of select="$AirportName1Choice/Doc:OthrAirprtDesc/Doc:AirprtNm"/></xsl:attribute>
													<xsl:attribute name="ch"><xsl:value-of select="$AirportName1_FullName_fox"/>_<xsl:value-of select="$AirportName1Choice_name"/>_<xsl:value-of select="$OthrAirprtDesc"/></xsl:attribute>
													<xsl:attribute name="multi">N</xsl:attribute>
												</xsl:element>
											</xsl:element>
										</tr>
									</table>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <AirportName1Choice> end ********** -->
</xsl:stylesheet>
