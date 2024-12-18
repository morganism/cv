# MORGAN SZIRAKI

### [Link to my CV in PDF format](https://raw.githubusercontent.com/morganism/cv/master/MorganSziraki_CV_20240604_4pg.pdf)

### [Link to the Markdown version of my CV](https://github.com/morganism/cv/blob/master/CV.md)

---

# How does this work?

## If you push changes to `CV.md`, here’s how the workflow runs step-by-step:

### Step-by-Step Execution

1. **Trigger the Workflow**:
   - The workflow is triggered because `CV.md` matches the path pattern `**/*.md` specified in the `on.push.paths` section of the workflow.

2. **Checkout the Repository**:
   - The `actions/checkout` step checks out the repository at the current commit, ensuring that `CV.md` and other files are available for the workflow to process.

3. **Install Dependencies**:
   - The `Install Pandoc and LaTeX` step installs the necessary tools to convert Markdown to PDF.

4. **Find Markdown Files**:
   - The `Find Markdown files` step runs the `find` command to identify all `.md` files in the repository.
   - The file list, including `CV.md`, is saved in the `markdown_files` output.

5. **Convert Markdown to PDF**:
   - The `Convert Markdown to PDF` step loops through each `.md` file found.
   - For `CV.md`, it runs the command:
     ```bash
     pandoc "CV.md" -o "CV.pdf"
     ```
   - This generates `CV.pdf` in the repository.

6. **Rename CV.pdf**:
   - The `Rename CV.pdf` step checks if `CV.pdf` exists.
   - If it does, the step generates today’s date using `date +%Y%m%d` and renames `CV.pdf` to something like `MorganSziraki_CV_20241218_4pg.pdf`.

7. **Upload Artifacts**:
   - The `Upload PDFs as artifacts` step uploads all `.pdf` files (both the original `CV.pdf` and the renamed `MorganSziraki_CV_20241218_4pg.pdf`) as artifacts. These can be downloaded from the workflow summary.

---

### Example Output

After pushing changes to `CV.md`:
- **Artifacts Generated**:
  - `CV.pdf` (the direct conversion of `CV.md`).
  - `MorganSziraki_CV_20241218_4pg.pdf` (the renamed file with today’s date).
- **Artifacts in Workflow Summary**:
  - You’ll find a downloadable artifact named `converted-pdfs` containing the PDF files.
