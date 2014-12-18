<xsl:stylesheet version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:soap="http://www.w3.org/2003/05/soap-envelope"
    xmlns:hs="http://www.holidaywebservice.com/HolidayService_v2/"
    exclude-result-prefixes="soap hs">
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/soap:Envelope/soap:Body/hs:GetHolidaysAvailableResponse/hs:GetHolidaysAvailableResult">
        <ROOT>
    		<TOPARRAY>~ARRAY~</TOPARRAY>
    		<TOPARRAY>~ARRAY~</TOPARRAY>
    		<xsl:for-each select="./hs:HolidayCode">
    		<TOPARRAY>
    			<code>~STR~<xsl:value-of select="./hs:Code"/></code>
    			<description><xsl:value-of select="./hs:Description"/></description>
    		</TOPARRAY>
    		</xsl:for-each>
        </ROOT>
    </xsl:template>
</xsl:stylesheet>
