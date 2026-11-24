> The Rule of Three claims that you would want to declare the remaining functions if you declare a custom version of the following three:

```cpp
~ClassName();                              				// destructor
ClassName(const ClassName<T>& other);         			// copy constructor
ClassName<T>& operator=(const ClassName<T>& other); 	// copy-assignment operator
```

The default copy constructor or copy-assignment operator creates a shallow copy of the object, meaning they share the same memory reference, where you would probably want a deep copy that clones the memory references into independent instances, which would require a custom copy constructor or copy-assignment operator. If the Rule of Three is violated, the default destructor will run twice on the copied objects when the original object and the copied object run out of scope, causing a double-free error.