# Markdown Test File for Theme Visibility Testing

This file contains various Markdown syntax elements to test theme rendering and preview.

**TESTWORD**: Use Cmd+F to find this **TESTWORD** throughout the file
**EXAMPLE**: This **EXAMPLE** word appears multiple times for testing

## Headings

# H1 - Main Title
## H2 - Section Title
### H3 - Subsection Title
#### H4 - Minor Section
##### H5 - Small Section
###### H6 - Tiny Section

---

## Text Formatting

**Bold text** or __bold text__ - SAMPLE formatting

*Italic text* or _italic text_ - TESTWORD style

***Bold and italic*** or ___bold and italic___ - EXAMPLE combo

~~Strikethrough text~~ - DUPLICATE text

`Inline code` in a sentence - REPEATED code

> Blockquote text
> Can span multiple lines
> And continue here

---

## Lists

### Unordered Lists

- Item 1
- Item 2
  - Nested item 2.1
  - Nested item 2.2
    - Deeply nested 2.2.1
- Item 3

* Alternative bullet
* Another item
  * Nested

+ Another style
+ Item here

### Ordered Lists

1. First item
2. Second item
   1. Nested numbered item
   2. Another nested item
3. Third item

---

## Links and Images

[Link text](https://example.com)

[Link with title](https://example.com "Link Title")

[Reference link][1]

[1]: https://example.com "Reference"

Auto-link: <https://example.com>

Email: <email@example.com>

![Alt text for image](https://via.placeholder.com/150)

---

## Code Blocks

Inline `code` example.

### Python Code Block

```python
def hello_world():
    """A simple function."""
    name = "World"
    print(f"Hello, {name}!")
    return True
```

### JavaScript Code Block

```javascript
function greet(name) {
  const message = `Hello, ${name}!`;
  console.log(message);
  return message;
}
```

### Bash Code Block

```bash
#!/bin/bash
echo "Hello World"
for i in {1..5}; do
  echo "Number: $i"
done
```

### Generic Code Block

```
This is a code block
without syntax highlighting
Just plain text
```

    Indented code block
    using 4 spaces
    also works

---

## Tables

| Column 1 | Column 2 | Column 3 |
|----------|----------|----------|
| Row 1    | Data     | More     |
| Row 2    | Info     | Content  |
| Row 3    | Text     | Here     |

| Left-aligned | Center-aligned | Right-aligned |
|:-------------|:--------------:|--------------:|
| Left         | Center         | Right         |
| Text         | More text      | Numbers: 123  |

---

## Horizontal Rules

---

***

___

- - -

---

## Task Lists (GitHub Flavored Markdown)

- [x] Completed task
- [x] Another completed task
- [ ] Incomplete task
- [ ] Another incomplete task
  - [x] Nested completed
  - [ ] Nested incomplete

---

## Nested Elements

1. **Ordered list with bold**
   - Nested unordered with `inline code`
   - Another item with *italic text*

2. Second item
   > With a blockquote
   > That has multiple lines

3. Third item with code:
   ```python
   print("Hello from nested code")
   ```

---

## Special Characters and Escaping

\\*Not italic\\*

\\[Not a link\\](https://example.com)

\\`Not code\\`

Use backslash \\ to escape special characters

---

## Emoji (if supported)

:smile: :rocket: :heart: :+1: :fire:

---

## Definitions (if supported)

Term
: Definition of the term

Another term
: Definition
: Another definition

---

## Footnotes (if supported)

Here's a sentence with a footnote.[^1]

[^1]: This is the footnote content.

---

## Abbreviations (if supported)

The HTML specification is maintained by the W3C.

*[HTML]: Hyper Text Markup Language
*[W3C]: World Wide Web Consortium

---

## HTML in Markdown (if allowed)

<div style="color: red; font-weight: bold;">
  This is HTML inside Markdown
</div>

<details>
  <summary>Click to expand</summary>
  Hidden content here!
</details>

---

## Math (if LaTeX supported)

Inline math: $E = mc^2$

Block math:
$$
\\frac{-b \\pm \\sqrt{b^2 - 4ac}}{2a}
$$

---

## Comments (not rendered)

<!-- This is a comment - TESTWORD EXAMPLE SAMPLE DUPLICATE REPEATED -->

<!-- TESTWORD EXAMPLE SAMPLE DUPLICATE REPEATED - all test words together -->

---

## Mixed Content Example

### AWS EC2 Instance Setup

To launch an EC2 instance:

1. **Install AWS CLI**:
   ```bash
   pip install awscli
   aws configure
   ```

2. **Launch instance**:
   - Instance type: `t3.micro`
   - AMI: `ami-0abcdef1234567890`
   - Region: *us-east-1*

3. **Connect via SSH**:
   ```bash
   ssh -i ~/.ssh/mykey.pem ec2-user@<instance-ip>
   ```

> **Note**: Remember to configure security groups!

| Resource | Type | Status |
|----------|------|--------|
| EC2      | Instance | ✅ Running |
| EBS      | Volume | ✅ Attached |
| EIP      | Address | ⚠️ Pending |

---

## Testing Checklist

Use this to test theme visibility:

- [ ] Can you see all heading levels clearly?
- [ ] Is bold text **noticeably** bold?
- [ ] Is italic text *distinguishable*?
- [ ] Do links stand out from regular text?
- [ ] Are code blocks clearly separated from text?
- [ ] Is syntax highlighting visible in code blocks?
- [ ] Are tables readable with clear borders?
- [ ] Do blockquotes have visible formatting?
- [ ] Are list bullets/numbers visible?
- [ ] Can you see horizontal rules?

---

## Long Content for Scrolling

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris.

### Section 1

Content here with `inline code` and **bold text**.

### Section 2

More content with [links](https://example.com) and *italic text*.

### Section 3

Final section with:
- List items
- More items
- Even more items

---

**End of markdown test file** - If you can read this clearly, your theme is working!

## Test Words Summary

All test words for find/match testing:
- TESTWORD
- EXAMPLE
- SAMPLE
- DUPLICATE
- REPEATED

Combined: **TESTWORD EXAMPLE SAMPLE DUPLICATE REPEATED** - use Cmd+F to find these words!
