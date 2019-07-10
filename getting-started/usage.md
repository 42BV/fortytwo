---
layout: default
title: Usage
nav_order: 6
permalink: /usage
parent: Getting started
---

This library provides access to enums through the React context API. This supports both functional and class component invocation.

### Functional component

```jsx
import { useEnum, useEnums } from '@42.nl/react-spring-enums';

const RoleLister = () => {
  const myEnum = useEnum('userRole'); // Fetch single enum by key
  const { enums } = useEnums(); // Fetch entire collection of enums

  return myEnum.map(role => <span key={role}>{role}</span>);
};
```

### Class component

```jsx
import { EnumsContext } from '@42.nl/react-spring-enums';

class RoleLister extends React.Component {
  render() {
    return (
      <EnumsContext.Consumer>
        {({ enums }) => {
          const userRoles = enums['userRole'];
          return userRoles.map(role => <span key={role}>{role}</span>)
        }
      </EnumsContext.Consumer>
    )
  }
}
```
