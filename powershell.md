1. [downloading the latest version of PSWindowsUpdate](https://gallery.technet.microsoft.com/scriptcenter/2d191bcd-3308-4edd-9de2-88dff796b0bc/)
2. import module
    ```
    import-module PSWindowsUpdate
    ```
3. gte all command from module
   ```
   Get-Command -Module  PSWindowsUpdate

   
    CommandType     Name                                               Version    Source
    -----------     ----                                               -------    ------
    Alias           Get-WindowsUpdate                                  1.6.1.1    PSWindowsUpdate
    Alias           Hide-WindowsUpdate                                 1.6.1.1    PSWindowsUpdate
    Alias           Install-WindowsUpdate                              1.6.1.1    PSWindowsUpdate
    Alias           Uninstall-WindowsUpdate                            1.6.1.1    PSWindowsUpdate
    Function        Add-WUOfflineSync                                  1.6.1.1    PSWindowsUpdate
    Function        Add-WUServiceManager                               1.6.1.1    PSWindowsUpdate
    Function        Get-WUAPIVersion                                   1.6.1.1    PSWindowsUpdate
    Function        Get-WUHistory                                      1.6.1.1    PSWindowsUpdate
    Function        Get-WUInstall                                      1.6.1.1    PSWindowsUpdate
    Function        Get-WUInstallerStatus                              1.6.1.1    PSWindowsUpdate
    Function        Get-WULastResults                                  1.6.1.1    PSWindowsUpdate
    Function        Get-WUList                                         1.6.1.1    PSWindowsUpdate
    Function        Get-WURebootStatus                                 1.6.1.1    PSWindowsUpdate
    Function        Get-WUServiceManager                               1.6.1.1    PSWindowsUpdate
    Function        Get-WUSettings                                     1.6.1.1    PSWindowsUpdate
    Function        Get-WUUninstall                                    1.6.1.1    PSWindowsUpdate
    Function        Hide-WUUpdate                                      1.6.1.1    PSWindowsUpdate
    Function        Invoke-WUInstall                                   1.6.1.1    PSWindowsUpdate
    Function        Remove-WUOfflineSync                               1.6.1.1    PSWindowsUpdate
    Function        Remove-WUServiceManager                            1.6.1.1    PSWindowsUpdate
    Function        Set-WUSettings                                     1.6.1.1    PSWindowsUpdate
    Function        Start-WUDetectNow                                  1.6.1.1    PSWindowsUpdate
    Function        Start-WUService                                    1.6.1.1    PSWindowsUpdate
   ```