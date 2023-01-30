# Flutter Project Structure

FF project structure implemented on a simple counter app
## Feature-first (layers inside features)

The feature-first approach demands that we create a new folder for every new feature that we add to our app. And inside that folder, we can add the layers themselves as sub-folders.

```
‣ lib
    ‣ src
        ‣ features
            ‣ features1
                ‣ presentation 
                ‣ application 
                ‣ domain
                ‣ data
            ‣ features1
                ‣ presentation 
                ‣ application 
                ‣ domain
                ‣ data
```

## Benefits
- Whenever we want to add a new feature or modify an existing one, we can focus on just one folder.
- If we want to delete a feature, there's only one folder to remove (two if we count the corresponding test's folder)


This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Read More About Feature First Layers](https://codewithandrea.com/articles/flutter-project-structure/)