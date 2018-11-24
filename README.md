# Localization
## Implementation steps
**Storyboard**
- Go to Project;
- In Localiztions area press plus button and choose needed language;
- Storyboard now include localization file where you can change translation for appropriate language.

**Code**
- Create New File - Resource - String file;
- In the Identity Inspector press on Localize button and choose appropriate languages;
- If necessary, mark additional languages there;
- In the created files write key-value pairs of translation words (e.g. *Apple = "Яблоко";*);
- In the code add key for the desired word : 
``` swift
NSLocalizedString("Apple", comment: "")
```




