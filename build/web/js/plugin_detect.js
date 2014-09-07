function detectJava()
{
    if (deployJava.versionCheck("1.6.0+") || deployJava.versionCheck("1.5.0*"))
    {
        return true;

    } else
    {
        return false;
    }
}