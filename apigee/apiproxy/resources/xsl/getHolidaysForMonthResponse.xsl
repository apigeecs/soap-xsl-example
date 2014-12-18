<xsl:stylesheet version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:soap="http://www.w3.org/2003/05/soap-envelope"
    xmlns:hs="http://www.holidaywebservice.com/HolidayService_v2/"
    exclude-result-prefixes="soap hs">
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/soap:Envelope/soap:Body/hs:GetHolidaysForMonthResponse/hs:GetHolidaysForMonthResult">
        <ROOT>
    		<TOPARRAY>~ARRAY~</TOPARRAY>
    		<TOPARRAY>~ARRAY~</TOPARRAY>
    		<xsl:for-each select="./hs:Holiday">
    			<xsl:variable name="holidayDate" select="./hs:Date"/>
    		<TOPARRAY>
    			<code>~STR~<xsl:value-of select="./hs:HolidayCode"/></code>
    			<description><xsl:value-of select="./hs:Descriptor"/></description>
				<date><xsl:value-of select="format-dateTime($holidayDate,'[Y0001]-[M01]-[D01]')"/></date>
    			<dayOfWeek><xsl:value-of select="format-dateTime($holidayDate,'[F]')"/></dayOfWeek>
    		</TOPARRAY>
    		</xsl:for-each>
        </ROOT>
    </xsl:template>
</xsl:stylesheet>
